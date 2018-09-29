package inf226;

public class Message {
	public final String sender, recipient, message;
	
	Message(final String sender, final String recipient, final String message) throws Invalid {
		this.sender = sender;
		this.recipient = recipient;
		if (!valid(message))
			throw new Invalid(message);
		this.message = message;
	}

    public static boolean valid(String message) {
        for (char c : message.toCharArray()) {
            if (Character.isISOControl(c)) {
                if (c != '\n') {
                    return false;
                }
            }
        }
        if (message.contains("\n.\n")) {
            return false;
        }
        return true;
    }

	public static class Invalid extends Exception {
		private static final long serialVersionUID = -3451435075806445718L;

		public Invalid(String msg) {
			super("Invalid string: " + msg);
		}
	}
}
