package team.project.est.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.project.est.repository.TodoDAO;

@Service
public class TodoService {

	@Autowired
	TodoDAO td;
	
	
}
