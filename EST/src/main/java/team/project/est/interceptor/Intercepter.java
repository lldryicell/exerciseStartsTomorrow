package team.project.est.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Intercepter extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("user_seq")!=null) {
			return super.preHandle(request, response, handler);
		} else{
			response.sendRedirect(request.getContextPath()+"/loginPage");
			return false;
		}
	}
}
