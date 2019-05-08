//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package testMD5;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.junit.Test;
import sun.misc.BASE64Encoder;

public class TestMD5 {
    public TestMD5() {
    }

    @Test
    public void EncoderByMd5() throws NoSuchAlgorithmException, UnsupportedEncodingException {
        String PW = "12345678";
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        BASE64Encoder base64en = new BASE64Encoder();
        String newstr = base64en.encode(md5.digest(PW.getBytes("utf-8")));
        System.out.println(newstr);
    }
}
