package ui;

import com.intuit.karate.junit5.Karate;

public class UIRunner {

	@Karate.Test
	public Karate test() {
		return Karate
				.run("uiAutomation.feature")
				.tags("@testSelenium")
				.relativeTo(getClass());
	}
}
