import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class UDPServer {
    private static final int PORTNUMBER = 12000;

    public static void main(String[] args) {
        try (DatagramSocket socket = new DatagramSocket(PORTNUMBER)) {
            byte[] receiveData = new byte[1024];
            byte[] sendData;
            while (true) {
                DatagramPacket packet = new DatagramPacket(receiveData, receiveData.length);
                socket.receive(packet);
                String message = new String(packet.getData());
                System.out.println(message);

                String reply = message.toUpperCase();
                sendData = reply.getBytes();
                InetAddress clientIP = packet.getAddress();
                int clientPortNumber = packet.getPort();
                DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, clientIP, clientPortNumber);
                socket.send(sendPacket);
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}