package team.project.est.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.project.est.service.TodoService;
import team.project.est.service.WorkService;

@Controller
public class AnalysisController {
	
	@Autowired
	WorkService ws;
	
	@Autowired
	TodoService ts;
	
	
}
