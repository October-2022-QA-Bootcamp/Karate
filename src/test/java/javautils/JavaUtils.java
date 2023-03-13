package javautils;

import java.time.Instant;

public class JavaUtils {

	public static String getOrganizationName() {
		return "EnthrallIT";
	}
	
	public static String getDate() {
		return Instant.now().toString();
	}
}
