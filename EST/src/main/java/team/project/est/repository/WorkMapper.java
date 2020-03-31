package team.project.est.repository;

import java.util.ArrayList;

public interface WorkMapper {

	public ArrayList<String> getDate(String user_id);

	public ArrayList<Double> getAvgData(String user_id);

}
