package team.project.est.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
