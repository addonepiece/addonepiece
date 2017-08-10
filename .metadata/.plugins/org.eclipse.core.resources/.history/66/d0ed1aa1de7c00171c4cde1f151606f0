package com.dly.cms.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class CaptchaTest {
	public static void main(String[] args) throws FileNotFoundException
    {
        Captcha captcha = new SpecCaptcha(150,40,5);// png格式验证码
        captcha.out(new FileOutputStream("E:/1.png"));
        // git https://www.oschina.net/code/snippet_99424_23429?p=1#39142
        //captcha = new GifCaptcha(150,40,5);//   //   gif格式动画验证码
        //captcha.out(new FileOutputStream("E:/1.gif"));
    }
}
