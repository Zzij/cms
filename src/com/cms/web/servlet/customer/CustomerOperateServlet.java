package com.cms.web.servlet.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.CustomerDaoImpl;
import com.cms.domain.Customer;
@WebServlet("/web/cusoperate")
public class CustomerOperateServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IBaseDao<Customer> cusdao;
	
	@Override
	public void init() throws ServletException {
		cusdao = new CustomerDaoImpl();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		String custId = req.getParameter("custId");
		Long id = Long.valueOf(custId);
		if("edit".equals(action)){
			Customer c = cusdao.get(id);
			req.setAttribute("custedit", c);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("check".equals(action)){
			Customer cusview = cusdao.get(id);
			req.setAttribute("cusview", cusview);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("delete".equals(action)||"2".equals(action)){
			cusdao.delete(id);
			List<Customer> List = cusdao.list();
			req.setAttribute("customerList", List);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("1".equals(action)){
			Customer cus = new Customer();
			String company = req.getParameter("custcompany");
			String custname = req.getParameter("custname");
			String contact = req.getParameter("custcontact");
			cus.setCustCompany(company);
			cus.setCustContact(contact);
			cus.setCustId(id);
			cus.setCustName(custname);
			cusdao.update(cus);
			List<Customer> List = cusdao.list();
			req.setAttribute("customerList", List);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
			
		}else{
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}
		
		
	}
	


}
