package nktg;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class NKTgLawTest {
    @Test
    public void testUniversalConstants() {
        // Khởi tạo một phiên thí nghiệm với thông số chuẩn
        NKTgLaw nktg = new NKTgLaw(2.0, 3.0, 5.0, 0.1);

        assertEquals(15.0, nktg.momentum(), 0.0001, "Momentum p = m * v failed");
        assertEquals(30.0, nktg.nktg1(), 0.0001, "NKTg1 = x * p failed");
        assertEquals(1.5, nktg.nktg2(), 0.0001, "NKTg2 = dm/dt * p failed");
    }
}
