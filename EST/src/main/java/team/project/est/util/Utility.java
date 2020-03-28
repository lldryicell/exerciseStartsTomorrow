package team.project.est.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Utility {
	public String getToday() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		
		return strToday;
	}
}
