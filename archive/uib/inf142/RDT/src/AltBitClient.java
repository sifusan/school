import javax.print.DocFlavor;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;

/**
 * Created by sifu on 23/05/18.
 */
public class AltBitClient {
    private static final int PORT_NUMBER = 12000;


    public static void main(String[] args) {
        try {
            String message = "test123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgftest123dsfkjhgsdfkluhfsdougdsfloidsfliuhdsfliuhdlsfgkihgf";
            if (args.length == 0) {
                initAltBit(message, InetAddress.getByAddress(args[0].getBytes()), 3);
            } else {
                initAltBit(message, InetAddress.getByName("localhost"), 3);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private static void initAltBit(String message, InetAddress destinationIP, int ttl) {
        boolean sent = false;

        int ackNumber = 0;
        int seqNumber = 0;

        while (!sent) {
            try (DatagramSocket socket = new DatagramSocket()) {
                DatagramPacket packet = makePacket(message.charAt(seqNumber), destinationIP, ackNumber);
                socket.send(packet);

                byte[] receiveData = new byte[1024];
                DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
                socket.setSoTimeout(ttl * 1000);
                socket.receive(receivePacket);

                String reply = new String(receivePacket.getData());
                String repliedAck = String.valueOf(reply.charAt(0));
                if (repliedAck.equals(String.valueOf(ackNumber))) {
                    System.out.println("Received correct ack=" + reply);
                    ackNumber = (ackNumber + 1) % 2;
                    seqNumber++;
                } else {
                    System.out.println("WRONG ACK! Retrying...");
                    continue;
                }

                if (seqNumber >= message.length()) {
                    sent = true;
                }

            } catch (IOException e) {
                if (e instanceof SocketTimeoutException) {
                    System.out.println("Socket timed out when trying to send "+ message.charAt(seqNumber) + ", retrying");
                } else {
                    e.printStackTrace();
                    System.exit(-1);
                }
            }
        }
    }

    private static DatagramPacket makePacket(char content, InetAddress destinationIP, int ack) {
        String fullMessage = String.valueOf(content) + ack;
        byte[] send = fullMessage.getBytes();
        return new DatagramPacket(send, send.length, destinationIP, PORT_NUMBER);
    }
}
