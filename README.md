SCryptCFC
=========

A CFC and example for using the SCrypt JAR for hashing and checking hashed strings.

## How to use...

Loading up the Java JAR file (SCrypt.jar) to the classpath can be done in a few ways via dropping the JAR in ColdFusion's global lib folder (be sure to restart CF after doing so), [JavaLoader](https://github.com/markmandel/JavaLoader) or, if you're running CF10+, Application.cfc's this.javaSettings.

Inside the Application.cfc would look like so:

`this.javaSettings = {loadPaths: ["./location/to/put/JARs"], watchExtensions: "jar"};`

From there, depending on how you called the JAR library into your classpath calling in SCrypt.cfc is as simple as...

`SCrypt = createObject("component", "SCrypt").init();`

You then have access to the necessary functions for hashing like so:

```
password = SCrypt.scryptHash("password");
writeOutput('<b>Hash: </b>' & password & '<br>');
writeOutput('<b>Check Hash: </b>' & SCrypt.scryptCheck("password", password));
```
