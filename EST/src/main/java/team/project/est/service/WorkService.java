package team.project.est.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.est.repository.WorkDAO;

@Service
public class WorkService {

	@Autowired
	WorkDAO wd;
	
	
}
