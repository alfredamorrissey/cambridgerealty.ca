<?php
class beanMember extends classObject
{
    protected $tblName = 'Member';
	protected $tblIndex = array("member_id");
	protected $schema = "senatorapts";

    protected $member_id = -1;
    protected $username = null;
    protected $password = null;
	
	
	public function setPassword($plain)
	{
		$this->password = $this->encryptPassword($plain);
		$_SESSION["logger"]->info("$plain $this->password " . $this->getPassword());
	}
	
	public function getPassword()
	{
		return $this->decryptPassword($this->password);
	}
	
	public function testEncryption($testKey)
	{
		
		$ciphertext = $this->encryptPassword($testKey);
		
		$decodeKey = $this->decryptPassword($ciphertext);
		
		
		$_SESSION["logger"]->info("[$testKey] [$decodeKey] [$ciphertext]"); 
		
	}
	
	public function encryptPassword($plaintext)
	{
		$key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
		$key_size =  strlen($key);
		$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
		$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
		
		$ciphertext = mcrypt_encrypt(MCRYPT_RIJNDAEL_128, $key,trim($plaintext), MCRYPT_MODE_CBC, $iv);
		$ciphertext = $iv . $ciphertext;
		return base64_encode($ciphertext);
	}
	
	public function decryptPassword($ciphertext)
	{
		$key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
		$key_size =  strlen($key);
		$iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_128, MCRYPT_MODE_CBC);
		$iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);

		$ciphertext_dec = base64_decode($ciphertext);
		$iv_dec = substr($ciphertext_dec, 0, $iv_size);
		$ciphertext_dec = substr($ciphertext_dec, $iv_size);
		$plaintext_dec = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $key, $ciphertext_dec, MCRYPT_MODE_CBC, $iv_dec);
		return trim($plaintext_dec);
    }
}
?>
