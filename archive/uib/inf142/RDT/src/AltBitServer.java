/**
 * Created by sifu on 23/05/18.
 */

import java.net.*;
import java.io.*;

public class AltBitServer {
    private static final int PORT_NUMBER = 12000;

    public static void main(String[] args) {
        try (DatagramSocket socket = new DatagramSocket(PORT_NUMBER)) {
            byte[] receiveData = new byte[1024];
            byte[] sendData;
            while (true) {
                DatagramPacket packet = new DatagramPacket(receiveData, receiveData.length);
                socket.receive(packet);
                String message = new String(packet.getData());
                System.out.println(message);

                String reply = String.valueOf(message.charAt(1));
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
