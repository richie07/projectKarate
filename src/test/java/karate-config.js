function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  var api_key = karate.properties['api_key']
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
        config.URL = "https://api.getpostman.com"
        config.API_KEY = api_key || "PMAK-XXXXX-XXXXX"
  } else if (env == 'qa') {
        config.URL = "http://localhost.com"
  }
  return config;
}