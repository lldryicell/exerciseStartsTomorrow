package team.project.est.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.project.est.dto.WorkVO;
import team.project.est.service.TodoService;
import team.project.est.service.WorkService;

@Controller
public class AnalysisController {
	
	@Autowired
	WorkService ws;
	
	@Autowired
	TodoService ts;
	
	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String chart(String user_id, Model model) {
		
		ArrayList<String> weekDateList = null;
		ArrayList<Integer> avgDataList = null;
		int entireComp[] = {0, 0, 0};//{달성률 70% 이상의 갯수, 달성률30~70%의 갯수, 달성률 30%이하의 갯수}
		ArrayList<WorkVO> expSoonList = null;
		
		weekDateList = ws.getDate(user_id);
		avgDataList = ws.getAvgData(user_id);
		entireComp = ws.getCountEnt(user_id);
		expSoonList = ws.expSoonList(user_id);
		
		model.addAttribute("weekDateList", weekDateList);
		model.addAttribute("avgDataList", avgDataList);
		model.addAttribute("entireComp", entireComp);
		model.addAttribute("expSoonList", expSoonList);
		
		return "chart";
	}
	
	
}
