/**
 * Created by sifu on 12/03/18.
 */
import java.net.*;
import java.io.*;

public class K {
    private static final int portNumber = 12000;

    public static void main(String[] args) {
        try(DatagramSocket socket = new DatagramSocket()) {
            BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
            String input = bf.readLine();
            InetAddress ip = InetAddress.getByName("localhost");
            byte[] sendData = input.getBytes();
            byte[] receiveData = new byte[1024];
            DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, ip, portNumber);
            socket.send(sendPacket);
            socket.setSoTimeout(200000);

            DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
            socket.receive(receivePacket);
            String reply = new String(receivePacket.getData());
            System.out.println(reply);

        } catch (IOException e) {
            System.out.println("An error occurred during IO\nError log printed below:\n");
            e.printStackTrace();
        }
    }

    private static String getUserInput() throws IOException {
        System.out.println("Enter name of webserver");
        BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
        String input = bf.readLine();
        return input;
    }
}
