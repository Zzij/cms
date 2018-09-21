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
import com.cms.domain.CustomerInvoice;



@WebServlet("/web/invoadd")
public class AddInvoiceServlet extends HttpServlet{

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
		indao.save(invo);
		List<CustomerInvoice> list = indao.list();
		req.setAttribute("invoiceList", list);
		req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
	}
	

}
