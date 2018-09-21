package com.cms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 HttpServletRequest req=(HttpServletRequest)request;
	     HttpServletResponse resp=(HttpServletResponse)response;
	     String path = req.getRequestURI();
	     System.out.println(path);
//	     if("/cms01/jsp/login.jsp".equals(path) || "/cms01/login".equals(path)) {
//	    	 chain.doFilter(req, resp);
//	    	 return;
//	     }
	     HttpSession session= req.getSession();
	     if(session.getAttribute("USER_IN_SESSION") != null ){
	    	 chain.doFilter(request, response);
	     }else{
	    	 resp.sendRedirect(req.getContextPath() + "/jsp/login.jsp");
	     }
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	

}
