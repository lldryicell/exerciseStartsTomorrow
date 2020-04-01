package team.project.est.repository;

import java.util.ArrayList;

import team.project.est.dto.UserVO;
import team.project.est.dto.WorkVO;

public interface WorkMapper {

	public ArrayList<String> getDate(String user_id);

	public ArrayList<Double> getAvgData(String user_id);

	public ArrayList<Double> AllPercentageData(String user_id);

	public ArrayList<WorkVO> allList(UserVO user);

	public double getUserAvg(String user_id);

}
