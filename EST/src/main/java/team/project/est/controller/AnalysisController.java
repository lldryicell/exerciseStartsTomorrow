package team.project.est.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.support.RequestContextUtils;

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
	public String chart(Model model, HttpServletRequest request) {
		String user_id = "error";//아이디를 못 불러올 시
		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		if (flashMap != null) {//불러 올 아이디가 있을 경우
			user_id = (String) flashMap.get("data");//아이디를 받아옴
		}

		ArrayList<String> weekDateList = null;
		ArrayList<Integer> avgDataList = null;
		int entireComp[] = { 0, 0, 0 };// {달성률 70% 이상의 갯수, 달성률30~70%의 갯수, 달성률 30%이하의 갯수}
		ArrayList<WorkVO> expSoonList = null;
		Map<String, String> goodWord = null;
		String rank = "";
		
		System.out.println("analysis controller : " + user_id);

		weekDateList = ws.getDate(user_id);
		avgDataList = ws.getAvgData(user_id);
		entireComp = ws.getCountEnt(user_id);
		expSoonList = ws.expSoonList(user_id);
		goodWord = ws.getGoodWord(user_id);
		rank = ws.userRank(user_id);
		

		model.addAttribute("weekDateList", weekDateList);
		model.addAttribute("avgDataList", avgDataList);
		model.addAttribute("entireComp", entireComp);
		model.addAttribute("expSoonList", expSoonList);
		model.addAttribute("goodWord", goodWord.get("word"));
		model.addAttribute("goodWordFrom", goodWord.get("from"));
		model.addAttribute("rank", rank);

		return "chart";
	}

}
