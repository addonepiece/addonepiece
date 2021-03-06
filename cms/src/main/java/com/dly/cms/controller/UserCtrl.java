package com.dly.cms.controller;

import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dly.cms.util.ValidImageUtil;

/**
 * 
 * @author yxr
 */

@Controller
@RequestMapping(value = "/user")
public class UserCtrl {

	@RequestMapping(value = "/getValidNum.do")
	public void getValidNum(HttpServletResponse response, HttpSession session) throws Exception {
		// 利用图片工具生成图片
		// 第一个参数是生成的验证码，第二个参数是生成的图片
		Object[] objs = ValidImageUtil.createImage();
		// 将验证码存入Session
		session.setAttribute("imageCode", objs[0]);
		// 将图片输出给浏览器
		BufferedImage image = (BufferedImage) objs[1];
		response.setContentType("image/png");
		OutputStream os = response.getOutputStream();
		ImageIO.write(image, "png", os);
	}
	
	// 校验验证码
	@RequestMapping(value = "/checkValidCode.do")
	public void checkValidCode(@RequestParam(required = false) String inputValidCode, PrintWriter writer, HttpSession session) {
		if(session.getAttribute("imageCode") == null) {
			return;
		}
		String code = ((String) session.getAttribute("imageCode")).toLowerCase();
		inputValidCode = inputValidCode.toLowerCase();
		if(inputValidCode.equals(code)) {
			session.removeAttribute("imageCode");
			writer.print("OK");
		}else {
			writer.print("Error");
		}
	}

}
