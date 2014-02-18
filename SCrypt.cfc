component name="SCrypt"
	output="false"
{
	public function init() {
		VARIABLES.scryptUtil = createObject("java", "com.lambdaworks.crypto.SCryptUtil");

		return THIS;
	}

	public string function scryptHash(
		required string password = "",
		numeric N = 32768,
		numeric r = 16,
		numeric p = 2
		)
	{
		return VARIABLES.scryptUtil.scrypt(ARGUMENTS.password, ARGUMENTS.N, ARGUMENTS.r, ARGUMENTS.p);;
	}

	public boolean function scryptCheck(required string password = "", required string hash = "") {
		var sCheck = VARIABLES.scryptUtil.check(ARGUMENTS.password, ARGUMENTS.hash);

		if (VARIABLES.scryptUtil.check(ARGUMENTS.password, ARGUMENTS.hash)) {
			return true;
		} else {
			return false;
		}
	}
}