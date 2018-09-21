package com.cms.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.ContractDaoImpl;
import com.cms.domain.Contract;

public class Randomhetong {
	
	private static String contId=null;
	private static IBaseDao<Contract> condao =new ContractDaoImpl();
	public static String getContId(){
		
		Date d=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		String format = sdf.format(d);
		String sb=format;

		for (int i = 0; i < 4; i++) {
			Random r= new Random();
			int rr = r.nextInt(10);
			sb=sb+rr;
		}
		contId =sb;
		Contract contract = condao.get(Long.valueOf(contId));
		if(contract == null){
			
			return contId;
		}else{
			Randomhetong.getContId(); 
		}
		return null;
		
	}

}
