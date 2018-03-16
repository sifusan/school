import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;

import java.net.*;
import java.io.*;

/**
 * Created by sifu on 12/03/18.
 */
public class WPS {
    private static final int portNumber = 12000;
    private static int clientPort;
    private static InetAddress clientIP;
    private static DatagramSocket socket;

    public static void main(String[] args) throws IOException {
        try  {
            socket = new DatagramSocket(portNumber);
            byte[] receiveData = new byte[1024];
            byte[] sendData;

            while (true) {
                DatagramPacket receivePacket =
                        new DatagramPacket(receiveData, receiveData.length);
                socket.receive(receivePacket);
                String userRequestedPage = new String(receivePacket.getData());
                System.out.println("User requested page at \"" + userRequestedPage+"\"");
                clientIP = receivePacket.getAddress();
                clientPort = receivePacket.getPort();
                System.out.println("Client port is " + clientPort);
                sendToClient(queryWeb(userRequestedPage), socket, clientIP, clientPort);
            }

        } catch (IOException | NullPointerException e) {

            if (e instanceof  UnknownHostException) {
                sendToClient("The server could not locate a web page by that name", socket, clientIP, clientPort);
            }
            else {
                sendToClient("An error occured on the server", socket, clientIP, clientPort);
            }
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

    private static String queryWeb(String userRequestPage) throws IOException {
        InetAddress requestedWebIP = InetAddress.getByName(userRequestPage);
        try (
                Socket toWebSocket = new Socket(requestedWebIP, 80);
                BufferedOutputStream bs = new BufferedOutputStream(toWebSocket.getOutputStream());
                BufferedInputStream is = new BufferedInputStream(toWebSocket.getInputStream());
        ) {

            String request = "GET / HTTP/1.0\r\n\r\n";
            bs.write(request.getBytes());
            bs.flush();
            String result = "";
            int ch;
            while ((ch = is.read()) != -1) {
                result = result + ((char) ch);
            }

            return result;

        } catch (IOException e) {
            System.out.println("An error occurred during IO");
            e.printStackTrace();
        }
        return null;
    }
}
