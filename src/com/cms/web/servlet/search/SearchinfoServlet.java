package com.cms.web.servlet.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.domain.Contract;
import com.cms.query.SearchQuery;
@WebServlet("/web/search")
public class SearchinfoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private SearchQuery sq = new SearchQuery();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String search = req.getParameter("search");
		String info = req.getParameter("searchinfo");
		Integer type =Integer.valueOf(search);
		List<Contract> searchQuery = sq.searchQuery(type, info);
		System.out.println(search);
		System.out.println(info);
		
		req.setAttribute("searchList", searchQuery);
		req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		
	}	

}
