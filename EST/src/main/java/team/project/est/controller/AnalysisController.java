package team.project.est.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team.project.est.dto.UserVO;
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
		
		System.out.println(user_id);
		
		weekDateList = ws.getDate(user_id);
		avgDataList = ws.getAvgData(user_id);
		
		model.addAttribute("weekDateList", weekDateList);
		model.addAttribute("avgDataList", avgDataList);
		
		return "chart";
	}
	
	
}
