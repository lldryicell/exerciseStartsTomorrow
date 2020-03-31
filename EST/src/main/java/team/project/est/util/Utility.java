package team.project.est.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Utility {
	
	/**
	 * change double percentage to int percentage method
	 * 
	 * @param percentage of double format
	 * @return percentage of int format
	 */
	public int percentage(double num) {
		int result = 0;
		
		result = (int)(num*100);
		
		return result;
	}
	
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
	 * change inputedDate to format("MM. dd") method
	 * 
	 * @param inputed date
	 * @return today's date String(MM. dd)
	 * 
	 */
	public String changeDateFormat(String inputedDate) {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date;
		try {
			date = transFormat.parse(inputedDate);
			
			transFormat = new SimpleDateFormat("MM. dd");
			String result = transFormat.format(date);
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "";
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
