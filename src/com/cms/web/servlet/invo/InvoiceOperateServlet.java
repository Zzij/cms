package com.cms.web.servlet.invo;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.CustomerInvoiceDaoImpl;
import com.cms.domain.Customer;
import com.cms.domain.CustomerInvoice;


@WebServlet("/web/invooperate")
public class InvoiceOperateServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IBaseDao<CustomerInvoice> indao;
	
	@Override
	public void init() throws ServletException {
		indao = new CustomerInvoiceDaoImpl();
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		String invoId = req.getParameter("invoiceId");
		Long id = Long.valueOf(invoId);
		if("edit".equals(action)){
			CustomerInvoice c = indao.get(id);
			req.setAttribute("invoedit", c);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("check".equals(action)){
			CustomerInvoice invoview = indao.get(id);
			
			req.setAttribute("invoview", invoview);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("delete".equals(action)||"2".equals(action)){
			indao.delete(id);
			List<CustomerInvoice> List = indao.list();
			req.setAttribute("invoiceList", List);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else if("1".equals(action)){
			String invoiceId = req.getParameter("invoiceId");
			String contId = req.getParameter("contId");
			String receivableMoney = req.getParameter("receivableMoney");
			String receivedMoney = req.getParameter("receivedMoney");
			String isInvoice = req.getParameter("isInvoice");
			CustomerInvoice invo = new CustomerInvoice();
			invo.setInvoiceId(invoiceId);
			invo.setContId(contId);
			invo.setReceivableMoney(Double.valueOf(receivableMoney));
			invo.setReceivedMoney(Double.valueOf(receivedMoney));
			invo.setIsInvoice(Byte.valueOf(isInvoice));
			indao.update(invo);
			
			List<CustomerInvoice> List = indao.list();
			req.setAttribute("invoiceList", List);
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}else{
			req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		}
	}

}
