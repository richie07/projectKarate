package apis;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import java.sql.SQLOutput;

import static org.junit.jupiter.api.Assertions.*;

class ApisTest {

    @Test
    void testParallel() {
        int threads = Integer.parseInt(System.getProperty("threads", "1"));
        Results results = Runner.path("classpath:apis").tags("@regresion")
                .parallel(threads);
        System.out.println("Number of threads - " + threads);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }


}
