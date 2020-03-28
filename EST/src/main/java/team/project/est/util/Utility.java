package team.project.est.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Utility {
	
	/**
	 * what day is it Today method
	 * 
	 * this method can use into createSeq, createSaveFileName, etc.
	 * 
	 * @return today's date String(yyyyMMdd)
	 */
	public String getToday() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		
		return strToday;
	}

	
	/**
	 * create random SEQ method
	 * 
	 * table name + today's date + 9randomNumber
	 * 
	 * @param string of Table name
	 * @return randomSEQ String
	 */
	public String createSeq(String string) {
		// TODO Auto-generated method stub

		double rand = Math.random()*1000000000;
		String seq = string + getToday() + (int) rand;
		
		return seq;
	}
}
