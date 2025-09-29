package nktg;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class NKTgLawTest {
    @Test
    public void testCalculations() {
        assertEquals(15.0, NKTgLaw.momentum(5, 3));
        assertEquals(30.0, NKTgLaw.nktg1(2, 5, 3));
        assertEquals(1.5, NKTgLaw.nktg2(0.1, 5, 3));
    }
}
