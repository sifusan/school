import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class UDPClient {
    private static final int PORTNUMBER = 12000;
    private static String message = "test123";
    private static String destinationName = "localhost";

    public static void main(String[] args) {
        try (DatagramSocket socket = new DatagramSocket()) {
            System.out.println("Started new AltBit client");
            InetAddress destinationIP = InetAddress.getByName(destinationName);

            byte[] sendData = message.getBytes();
            DatagramPacket packet = new DatagramPacket(sendData, sendData.length, destinationIP, PORTNUMBER);
            socket.send(packet);

            byte[] receiveData = new byte[1024];
            DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
            socket.receive(receivePacket);
            String reply = new String(receivePacket.getData());
            System.out.println(reply);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}