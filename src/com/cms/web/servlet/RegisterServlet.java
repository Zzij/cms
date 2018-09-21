package com.cms.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.UserDaoImpl;
import com.cms.domain.User;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IBaseDao udao;
	@Override
	public void init() throws ServletException {

		udao = new UserDaoImpl();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = ((UserDaoImpl) udao).getPassword(username);
		if(user != null){
			resp.getWriter().write("该用户已存在<a href='/cms01/jsp/register.jsp'>点击重新注册...</a>");
		}else{
			User u = new User();
			u.setUsername(username);
			u.setPassword(password);
			udao.save(u);
			resp.getWriter().write("注册成功<a href='/cms01/jsp/login.jsp'>点击登录...</a>");
		}
		
		
	}

}
