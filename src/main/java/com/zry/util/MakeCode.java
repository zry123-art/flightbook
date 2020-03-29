package com.zry.util;

import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;


public class MakeCode {
	public static char[] characters={
		'a','b','c','d','e','h','g','f','i','g','k','l','m','n','o','p',
		'q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F',
		'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
		'W','X','Y','Z','1','2','3','4','5','6','7','8','9','0'
	};
	
	public static String getCode(OutputStream out){
		//定义内存图像
		BufferedImage image = new BufferedImage(60,20,BufferedImage.TYPE_INT_RGB);
		
		//绘制图像
		//获得画笔
		Graphics g = image.getGraphics();
		
		//设置绘制的区域
		g.drawRect(0, 0, 60, 20);
		
		//随机数
		StringBuffer sub = new StringBuffer();
		for(int i=0;i<4;i++){
			sub.append(characters[(int)(Math.random()*characters.length)]);
		}
		
		//将随机数-验证码--显示到图像中--内存
		g.setFont(new Font("Dialog",Font.ITALIC,18));
		
		g.drawString(sub.substring(0,1),6,15);
		g.drawString(sub.substring(1,2),16,17);
		g.drawString(sub.substring(2,3),33,16);
		g.drawString(sub.substring(3,4),47,18);
		
		//将内存中图像绘制到界面
		try {
			ImageIO.write(image, "jpg", out);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return sub.toString();
	}
	/**
	 * create by: Zhangrongyu
	 * description: TODO
	 * create time:
	 *
	 * @return null
	 */
	public static void main(String[] args){
		File file = new File("/home/soft02/image/code.jpg");
		OutputStream out = null;
		try {
			out = new FileOutputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		MakeCode.getCode(out);
	}
	
}