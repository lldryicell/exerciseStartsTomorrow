package team.project.est.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Default;

public class Utility {

	/**
	 * change double percentage to int percentage method
	 * 
	 * @param percentage of double format
	 * @return percentage of int format
	 */
	public int percentage(double num) {
		int result = 0;

		result = (int) (num * 100);

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

		double rand = Math.random() * 1000000000;
		String seq = string + getToday() + (int) rand;

		return seq;
	}

	/**
	 * 명언 출력 메서드
	 * 
	 * 유저의 전체달성률 평균에 따라 출력하는 명언이 다르게 출력된다.
	 * 
	 * @param 달성률에 따른 switch문 실행 번호
	 * @return 명언과 인물의 key, value값을 가지고 있는 map
	 */
	public HashMap<String, String> getGoodWord(int i) {
		// TODO Auto-generated method stub
		HashMap<String, String> map = new HashMap<String, String>();
		String goodWord[] = {
				"인간의 의지에 저항할 수 있는 것은 없다.", 
				"인간의 의지는 말하자면, 하나님과 악마 사이에 있는 짐승과 같다.", 
				"의지가 있는 자는 힘이 있다", 
				"네발이 네가 가고자 하는 곳으로 너를 이끌것이다", 
				"할 수 있는 자보다 하려고 하는 자가 더 많은 것을 한다", 
				"세상은 지혜보다는 의지에 달려있다", 
				"우선 무엇이 되고자 하는지 자신에게 말하라. 그리고 나서 할 일을 하라.", 
				"아는 것만으로는 충분하지 않다. 적용해야만 한다. 의지만으론 충분하지 않다. 실행해야 한다.", 
				"꿈을 기록하는 것이 나의 목표였던적은 없다. 꿈을 실현하는 것이 나의 목표이다", 
				"성공에 대해서 서두르지 않고, 교만하지 않고, 쉬지 않고, 포기하지 않는다", 
				"순간을 미루면 인생마저 미루게 된다."
				};
		String goodWordFrom[] = {
				"디즈레일리", 
				"M. 루터", 
				"메난드로스", 
				"탈무드", 
				"가브리엘 뫼리에", 
				"H.K. 아미엘", 
				"에픽테토스", 
				"괴테", 
				"만 레이", 
				"슐러", 
				"마틴 베레가드"
				};
		
		int randIndex = 0;
		switch (i) {
		case 1:
			randIndex = randomRange(0, 3);
			map.put("word", goodWord[randIndex]);
			map.put("from", goodWordFrom[randIndex]);
			break;
		case 2:
			randIndex = randomRange(4, 6);
			map.put("word", goodWord[randIndex]);
			map.put("from", goodWordFrom[randIndex]);
			break;
		case 3:
			randIndex = randomRange(7, 9);
			map.put("word", goodWord[randIndex]);
			map.put("from", goodWordFrom[randIndex]);
			break;
		default:
			System.out.println("경고 : 잘못된 값이 입력되었습니다.");
			break;
		}
		return map;
	}

	/**
	 * 범위 내 숫자를 랜덤으로 출력하는 메서드
	 * @param 시작숫자
	 * @param 끝 숫자
	 * @return 랜덤 숫자
	 */
	public int randomRange(int n1, int n2) {
		return (int) (Math.random() * (n2 - n1 + 1)) + n1;
	}

	/**
	 * 유저의 전체달성률 평균에 따른 랭크 이름 반환 메서드
	 * 
	 * @param percentage(int)
	 * @return rank(String)
	 */
	public String getRank(int percentage) {
		// TODO Auto-generated method stub
		String result = "";
		
		if (percentage>90) {
			result = "05_master";
		} else if (percentage>70) {
			result = "04_diamond";
		} else if (percentage>30) {
			result = "03_gold";
		} else if (percentage>10) {
			result = "02_silver";
		} else {
			result = "01_bronze";
		}
		
		return result;
	}
}
