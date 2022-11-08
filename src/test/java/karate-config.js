function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
        config.URL = "https://api.getpostman.com"
        config.API_KEY = "xxxx-xxxx-xxxx-xxxx"
  } else if (env == 'qa') {
        config.URL = "http://localhost.com"
  }
  return config;
}