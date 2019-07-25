package com.util;

import java.io.File;
import java.io.FileOutputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.web.multipart.MultipartFile;






/**
 *
 *
 */
public class Util {

	
	// 获取当前月份
	public static String getYuefen() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		Date date = new Date();
		return sdf.format(date.getTime());
	}
	
	// 获取当前系统时间
	public static String getTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		return sdf.format(date.getTime());
	}
	
	// 获取当前系统时间
	public static String getRiqi() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		return sdf.format(date.getTime());
	}
	
	
	// 获取当前系统时间
	public static Date parseTime(String s) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.parse(s);
	}
	


	// 获取当前系统时间
	public static String getTime2() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		return sdf.format(date.getTime());
	}

	//文件上传
	public static String uploadFile(HttpServletRequest request,MultipartFile prodFile){
		 //获取当前项目得绝对路径
		HttpSession  session = request.getSession();
        String basePath = session.getServletContext().getRealPath("/");
        File target = new File("/uploads");
        //创建服务器上文件上传的文件夹   
        File destFolder = new File(target, Util.getRiqi()); 

        //获取文件原名
        String fileOriginalName = prodFile.getOriginalFilename();
        //获取上传的文件名后缀
        String suffix = fileOriginalName.substring(fileOriginalName.lastIndexOf("."));
        //用UUID生成一个随机字符串作为上传到服务器的文件名
        String uploadFileName = UUID.randomUUID().toString()+suffix;
        //文件从uploads开始的路径（要保存到数据库的路径）
        File destFile = new File(destFolder,uploadFileName);
        //生成所有文件夹
        File fileUploadPath=new File(basePath+destFile.getPath());
        if(!fileUploadPath.getParentFile().exists()){
            fileUploadPath.getParentFile().mkdirs();
        }
    
        DigestInputStream dis=null;
        FileOutputStream fos=null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            //创建DigestInputStream对象
            dis = new DigestInputStream(prodFile.getInputStream(), md);
            //创建输入流对象
            fos = new FileOutputStream(fileUploadPath);
            //上传文件
            byte[] bys = new byte[1024];
            int len = 0;
            while((len=dis.read(bys))>0){
                fos.write(bys, 0, len);
            }
           
        }catch (Exception e) {
        	e.printStackTrace();
        }finally{
            if(fos!=null)try {fos.close();} catch (Exception e) {e.printStackTrace();}

            if(dis!=null)try {dis.close();} catch (Exception e) {e.printStackTrace();}

        }

        //获取文件上传成功在服务器上的相对路径
        String filePath = destFile.getPath();
        
        return filePath;
		
	}
	
	
	
	
	
	
	

}
