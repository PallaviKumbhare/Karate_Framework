package Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;


//@RunWith(Karate.class)
//@KarateOptions(features = "classpath:Karate.SampleKarate")

public class TestRunner
{
	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:Test")
        		.tags("@Print")
        		.parallel(1);
}
}
