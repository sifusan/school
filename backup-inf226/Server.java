package inf226;

import java.io.*;
import java.net.*;
import java.sql.SQLException;
import java.util.function.Function;

import com.lambdaworks.crypto.SCrypt;
import inf226.Storage.KeyedStorage;
import inf226.Storage.Storage;
import inf226.Storage.Storage.ObjectDeletedException;
import inf226.Storage.Stored;
import inf226.Storage.TransientStorage;
import com.lambdaworks.crypto.SCryptUtil;

/**
 * The Server main class. This implements all critical server functions.
 *
 * @author INF226
 */
public class Server {
    private static final int portNumber = 1337;
    private static final KeyedStorage<String, User> storage
            = new TransientStorage<String, User>
            (new Function<User, String>() {
                public String apply(User u) {
                    return u.getName();
                }
            });

    private static final char[] allowedUserChars = "abcdefghijklmnopqrstuvwxyz123456789".toCharArray();
    private static final char[] allowedPasswdChars = "abcdefghijklmnopqrstuvwxyz123456789.,:;()[]<>~'#\"!$%&/+*?=-_|".toCharArray();

    public static Maybe<Stored<User>> authenticate(String username, String password) {
        Maybe<Stored<User>> storedUser = storage.lookup(username);
        try {
            String storedUserPassword = storedUser.force().getValue().getPasswordcpy();
            if (SCryptUtil.check(password, storedUserPassword)) {
                return storedUser;
            }

        } catch (Maybe.NothingException e) {
            System.out.println("An error occurred during authentication");
            e.printStackTrace();
        }
        return Maybe.nothing();
    }

    public static Maybe<Stored<User>> register(String username, String password) {
        String hashedPassword = SCryptUtil.scrypt(password, 8,8,8);
        User user = new User(username, new ImmutableLinkedList<>(), hashedPassword);
        try {
            return Maybe.just(storage.save(user));
        } catch (SQLException e) {
            System.out.println("An error occurred when registering new user");
            e.printStackTrace();
        }

        return Maybe.nothing();
    }


    public static Maybe<Token> createToken(Stored<User> user) {
        // TODO: Implement token creation
        return Maybe.nothing();
    }

    public static Maybe<Stored<User>> authenticate(String username, Token token) {
        // TODO: Implement user authentication
        return Maybe.nothing();
    }

    public static Maybe<String> validateUsername(String username) {
        int count = 0;
        for (int i = 1; i < username.length(); i++) {
            for (int j = 0; j < allowedUserChars.length; j++) {
                if (username.charAt(i) != allowedUserChars[j]) {
                    count++;
                }
            }
            if (count >= allowedUserChars.length) {
                return Maybe.nothing();
            } else {
                count = 0;
            }

        }
        return Maybe.just(username);
    }

    public static Maybe<String> validatePassword(String pass) {

        int count = 0;
        for (int i = 1; i < pass.length(); i++) {
            for (int j = 0; j < allowedPasswdChars.length; j++) {
                if (pass.charAt(i) != allowedPasswdChars[j]) {
                    count++;
                }
            }
            if (count >= allowedPasswdChars.length) {
                return Maybe.nothing();
            } else {
                count = 0;
            }

        }
        return Maybe.just(pass);
    }

    public static boolean sendMessage(Stored<User> sender, Message message) {
        // TODO: Implement the message sending.
        Maybe<Stored<User>> recipient = storage.lookup(message.recipient);
        try {
            System.out.println(message.sender);
            System.out.println(message.recipient);
            System.out.println(message.message);
            User u = recipient.force().getValue().addMessage(message);
            storage.update(recipient.force(), u);
            return true;
        } catch (Maybe.NothingException | SQLException | Storage.ObjectModifiedException | ObjectDeletedException e) {
            System.out.println("An error occurred while sending");
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Refresh the stored user object from the storage.
     *
     * @param user
     * @return Refreshed value. Nothing if the object was deleted.
     */
    public static Maybe<Stored<User>> refresh(Stored<User> user) {
        try {
            return Maybe.just(storage.refresh(user));
        } catch (ObjectDeletedException e) {
        } catch (SQLException e) {
        }
        return Maybe.nothing();
    }

    /**
     * @param args TODO: Parse args to get port number
     */
    public static void main(String[] args) {
        final RequestProcessor processor = new RequestProcessor();
        System.out.println("Staring authentication server");
        processor.start();
        try (final ServerSocket socket = new ServerSocket(portNumber)) {
            while (!socket.isClosed()) {
                System.err.println("Waiting for client to connect…");
                Socket client = socket.accept();
                System.err.println("Client connected.");
                processor.addRequest(new RequestProcessor.Request(client));
            }
        } catch (IOException e) {
            System.out.println("Could not listen on port " + portNumber);
            e.printStackTrace();
        }
    }


}
