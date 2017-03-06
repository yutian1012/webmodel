package org.ipph.web.security;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.xml.bind.DatatypeConverter;

import org.apache.commons.codec.binary.Base64;
import org.springframework.security.crypto.password.PasswordEncoder;
/**
 * 安全加密机制
 */
public class CpqueryPwdEncoding implements PasswordEncoder{
	/**
	 * 加密操作
	 */
	@Override
	public String encode(CharSequence rawPassword) {
		MessageDigest messageDigest = null;  
        try {  
            messageDigest = MessageDigest.getInstance("MD5");  
            messageDigest.reset();  
            messageDigest.update(rawPassword.toString().getBytes("UTF-8"));  
            byte[] byteArray = messageDigest.digest();  
            StringBuffer md5StrBuff = new StringBuffer();  
            for (int i = 0; i < byteArray.length; i++) {  
            	if (Integer.toHexString(0xFF & byteArray[i]).length() == 1)  
            		md5StrBuff.append("0").append(Integer.toHexString(0xFF & byteArray[i]));  
            	else  
            		md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));  
            }  
            return md5StrBuff.toString();
        } catch (NoSuchAlgorithmException e) {
        	e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();  
        }
        return "";
	}
	/**
	 * 匹配密码
	 */
	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		String enc=this.encode(rawPassword);
		return enc.equals(encodedPassword);
	}

	public static void main(String[] args) {
		CpqueryPwdEncoding encoding=new CpqueryPwdEncoding();
		String hello="hello";
		System.out.println(encoding.encode(hello));
	}
}
