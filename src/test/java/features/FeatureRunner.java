package features;

import com.intuit.karate.junit5.Karate;

public class FeatureRunner {

	@Karate.Test
	public Karate test() {
		return Karate
				.run("getCalls.feature")
				.tags("@players")
				.relativeTo(getClass());
	}
}
