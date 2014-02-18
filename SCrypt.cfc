component name="SCrypt"
	output="false"
{
	public function init() {
		VARIABLES.scryptUtil = createObject("java", "com.lambdaworks.crypto.SCryptUtil");

		return THIS;
	}

	public string function scryptHash(
		required string s = "",
		numeric N = 32768,
		numeric r = 16,
		numeric p = 2
		)
	{
		return VARIABLES.scryptUtil.scrypt(ARGUMENTS.s, ARGUMENTS.N, ARGUMENTS.r, ARGUMENTS.p);;
	}

	public boolean function scryptCheck(required string s = "", required string hash = "") {
		if (VARIABLES.scryptUtil.check(ARGUMENTS.s, ARGUMENTS.hash)) {
			return true;
		} else {
			return false;
		}
	}
}