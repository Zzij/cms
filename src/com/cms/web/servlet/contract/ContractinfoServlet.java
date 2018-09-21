package com.cms.web.servlet.contract;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.ContractDaoImpl;
import com.cms.domain.Contract;

@WebServlet("/web/coninfo")
public class ContractinfoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IBaseDao<Contract> condao;
	
	@Override
	public void init() throws ServletException {
		condao = new ContractDaoImpl();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Contract> list = condao.list();
		req.setAttribute("contractList", list);
		
		req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
	}
	

}
