<cfscript>
	start = getTickCount();
	SCrypt = createObject("component", "SCrypt").init();
	password = SCrypt.scryptHash("password");

	writeOutput('<b>Hash: </b>' & password & '<br>');
	writeOutput('<b>Check Hash: </b>' & SCrypt.scryptCheck("password", password) & '<br>');
	writeOutput('<b>Time In Seconds: </b>' & (getTickCount() - start) / 1000);
</cfscript>