
import java.net.*;
import java.io.*;

/**
 * Created by sifu on 12/03/18.
 */
public class WPS {
    private static final int portNumber = 12000;

    public static void main(String[] args) throws IOException {
        byte[] receiveData = new byte[1024];
        byte[] sendData = new byte[1024];
        try {
            DatagramSocket serverSocket = new DatagramSocket(portNumber);
            while(true) {
                DatagramPacket gotPacket = new DatagramPacket(receiveData, receiveData.length);
                serverSocket.receive(gotPacket);
                String message = new String(gotPacket.getData(), 0, gotPacket.getLength());
                String[] splitted = message.split("/", 2);
                String result;
                if (splitted.length > 1) {
                    result = queryWeb(splitted[0], "/"+splitted[1]);
                } else {
                    result = queryWeb(splitted[0], "/");
                }
                sendToClient(result, serverSocket, gotPacket.getAddress(), gotPacket.getPort());
            }
        } catch(IOException e) {
            e.printStackTrace();
        }
    }

    private static void sendToClient(String message, DatagramSocket socket, InetAddress ip, int port) {
        try {
            byte[] sendData;
            sendData = message.getBytes();
            DatagramPacket packet = new DatagramPacket(sendData, sendData.length, ip, port);
            socket.send(packet);

        } catch (IOException | NullPointerException e) {
            e.printStackTrace();
        }
    }

    private static String queryWeb(String host, String path) throws IOException {
        InetAddress requestedWebIP = InetAddress.getByName(host);
        System.out.println(requestedWebIP.toString());
        try (
                Socket toWebSocket = new Socket(requestedWebIP, 80);
                BufferedOutputStream outPutStream = new BufferedOutputStream(toWebSocket.getOutputStream());
                BufferedReader inputStream = new BufferedReader(new InputStreamReader(toWebSocket.getInputStream()))
        ) {

            System.out.println("HOST IS: " + host);
            System.out.println("PATH IS: " + path);
            String request = "HEAD " + path + " HTTP/1.1\r\n" + "Host: " + host + "\r\n\r\n";
            outPutStream.write(request.getBytes());
            outPutStream.flush();
            String input;
            String result = "";

            while ((input = inputStream.readLine()) != null) {
                result = result + input + "\n";
            }

            return result;

        } catch (IOException e) {
            System.out.println("An error occurred during IO");
            e.printStackTrace();
        }
        return null;
    }
}
