package Test;

import org.junit.Test;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;


//@RunWith(Karate.class)
//@KarateOptions(features = "classpath:Karate.SampleKarate")

public class TestRunner
{
	@Test
    public void testParallel() {
        Results results =Runner.path("Test")
        		.tags("@Pallavi")
        		.parallel(1);
}
}