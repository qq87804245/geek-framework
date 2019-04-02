package com.geekcattle.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.slf4j.Slf4j;

/**
 * 鉴权拦截器
 */
@Component
@Slf4j
public class AuthInteceptor implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
/*
		log.info("鉴权拦截器............");
		HttpSession session = request.getSession();
		Object username = session.getAttribute("username");
		Object token = session.getAttribute("token");
		log.info(username+" | "+token);
		
//		return username==null?false:true;
*/		return true;
	}
	
}
