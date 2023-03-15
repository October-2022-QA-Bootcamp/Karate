function fn() {
	var env = karate.env; // get java system property 'karate.env'
	karate.log('karate.env system property was:', env);
	if (!env) {
		env = 'dev'; // a custom 'intelligent' default
	}
	var config = { // base config JSON
		baseUrl: 'http://enthrall.education:3001',
		constant: karate.callSingle('classpath:features/constants.js')
	};
	if (env == 'dev') {
		config.baseUrl = 'http://enthrall.education:3001'
	} else if (env == 'stg') {
		config.baseUrl = 'http://enthrall.stg.education:3001'
	}
	// don't waste time waiting for a connection or if servers don't respond within 5 seconds
	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000);
	karate.configure('retry',{count: 3, interval: 2000 });
	return config;
}