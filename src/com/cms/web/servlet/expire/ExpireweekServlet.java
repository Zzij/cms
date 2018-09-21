package com.cms.web.servlet.expire;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.domain.Contract;
import com.cms.query.ExpireQuery;
@WebServlet("/web/expireweek")
public class ExpireweekServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ExpireQuery eq =new ExpireQuery();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Contract> list = eq.Expirequery(3,7);
		req.setAttribute("expiredays", list);
		req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
	}
	

}
