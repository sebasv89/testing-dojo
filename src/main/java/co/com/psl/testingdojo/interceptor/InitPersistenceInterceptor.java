package co.com.psl.testingdojo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import co.com.psl.testingdojo.controller.MainController;
import co.com.psl.testingdojo.domain.PersistenceObject;

public class InitPersistenceInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		String url = request.getRequestURL().toString();
		if (!url.contains("resources")) {
			String tokens[] = request.getRequestURL().toString().split("/");
			if (tokens.length - 2 >= 0) {
				String username = tokens[tokens.length - 2];
				if (MainController.getPersistenceObjectMap().get(username) == null) {
					MainController.getPersistenceObjectMap().put(username,
							new PersistenceObject());
				}
			}
		}
		return true;
	}

}
