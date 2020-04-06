package team.project.est.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.est.dto.UserVO;
import team.project.est.dto.WorkVO;
import team.project.est.repository.WorkDAO;
import team.project.est.util.Utility;

@Service
public class WorkService {

	@Autowired
	WorkDAO wd;
	
	Utility util = new Utility();

	public ArrayList<String> getDate(String user_id) {
		// TODO Auto-generated method stub
		ArrayList<String> unformattedDataList = wd.getDate(user_id);
		ArrayList<String> result = new ArrayList<String>();
		
		for (String str : unformattedDataList) {
			str = util.changeDateFormat(str);
			result.add(str);
		}
		
		return result;
	}

	public ArrayList<Integer> getAvgData(String user_id) {
		// TODO Auto-generated method stub
		ArrayList<Double> doubleAvgData = wd.getAvgData(user_id);
		ArrayList<Integer> result = new ArrayList<Integer>();
		int temp = 0;
		
		for (Double num : doubleAvgData) {
			temp = util.percentage(num);
			result.add(temp);
		}
		
		return result;
	}

	public int[] getCountEnt(String user_id) {
		// TODO Auto-generated method stub
		int count[] = {0, 0, 0};
		ArrayList<Double> list = wd.AllPercentageData(user_id);
		
		for (Double data : list) {
			if (data>0.7) {
				count[0] += 1;
			}else if(data>0.3) {
				count[1] += 1;
			}else {
				count[2] += 1;
			}
		}
		
		return count;
	}

	public ArrayList<WorkVO> expSoonList(String user_id) {
		// TODO Auto-generated method stub
		UserVO user = new UserVO();
		user.setUser_id(user_id);
		
		ArrayList<WorkVO> List = wd.allList(user);
		ArrayList<WorkVO> result = new ArrayList<WorkVO>();
		
		user.setUser_id(user_id);
		
		for (int i = 0; i < List.size() && i<5; i++) {//상위 5개만 가져올 예정
			List.get(i).setWork_success_rate(util.percentage(List.get(i).getWork_success_rate()));
			result.add(List.get(i));
		}
		return result;
	}

	public Map<String, String> getGoodWord(String user_id) {
		// TODO Auto-generated method stub
		HashMap<String, String> map = new HashMap<String, String>();
		
		double doubAvg = wd.getUsersAvg(user_id);
		int intAvg = util.percentage(doubAvg);
		
		if(intAvg>70) {
			map = util.getGoodWord(1);
		} else if(intAvg>30) {
			map = util.getGoodWord(2);
		} else {
			map = util.getGoodWord(3);
		}
		
		return map;
	}

	public String userRank(String user_id) {
		// TODO Auto-generated method stub
		String result = "";
		int percentage = util.percentage(wd.getUsersAvg(user_id));
		
		result = util.getRank(percentage);
		
		return result;
	}
	
	
}
