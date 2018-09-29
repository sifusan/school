package inf226;

import static org.junit.jupiter.api.Assertions.*;

class MessageTest {

    @org.junit.jupiter.api.Test
    void valid() {
        assertEquals(true, Message.valid("\n"));
        assertEquals(false, Message.valid("\n.\n"));
    }
}