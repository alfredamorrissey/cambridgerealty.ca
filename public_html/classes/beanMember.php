<?php
class beanMember extends classObject
{
    protected $tblName = 'Member';
	protected $tblIndex = array("member_id");
	protected $schema = "cambridg_old";

    protected $member_id = -1;
    protected $username = null;
    protected $password = null;
	
	
	public function setPassword($pwd)
	{
		global $config;
		$pepper = $config["pepper"];
		$pwd_peppered = hash_hmac("sha256", $pwd, $pepper);
		$this->password = password_hash($pwd_peppered, PASSWORD_ARGON2ID);
	}
	
	public function getPassword()
	{
		return $this->password;
	}

	/***
	 * Public function used to take plain text password, hash
	 * it and compare with the hashed database value
	 * @param $pwd plain text password to compare with user's password
	 * @return bool
	 */
	public function testPassword($pwd)
	{
		global $config;
		$pepper = $config["pepper"];
		$pwd_peppered = hash_hmac("sha256", $pwd, $pepper);
		return password_verify($pwd_peppered, $this->password);
	}
}
?>
