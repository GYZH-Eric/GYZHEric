package com.zlyx.tool;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

//自定义时间格式转换器
public class MyDateConvert implements Converter<String, Timestamp>{
	
	@Override
	public Timestamp convert(String arg0) {
		
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
		Timestamp timestamp=null;
		try {
			Date date=simpleDateFormat.parse(arg0);
			timestamp=new Timestamp(date.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return timestamp;
	}

}
