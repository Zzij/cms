package com.cms.web.servlet.contract;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.ContractDaoImpl;
import com.cms.domain.Contract;
import com.cms.util.Randomhetong;
@WebServlet("/web/conadd")
public class AddContractServlet extends HttpServlet{

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
		String contName = req.getParameter("contName");
		String custId = req.getParameter("custId");
		String contBeginDate = req.getParameter("contBeginDate");
		String contEndDate = req.getParameter("contEndDate");
		String contMoney = req.getParameter("contMoney");
		String operator = req.getParameter("operator");
		String receivableMoney = req.getParameter("receivableMoney");
		String receivedMoney = req.getParameter("receivedMoney");
		String payDate = req.getParameter("payDate");
		String expireDays = req.getParameter("expireDays");
		String receivableDate = req.getParameter("receivableDate");
		String contType = req.getParameter("contType");
		String stampTaxRate = req.getParameter("stampTaxRate");
		String stampTax = req.getParameter("stampTax");
		String stampPayDate = req.getParameter("stampPayDate");
		String contId = Randomhetong.getContId();
		Contract con =new Contract();
		con.setContId(contId);
		con.setContName(contName);
		con.setCustId(Long.valueOf(custId));
		con.setContBeginDate(contBeginDate);
		con.setContEndDate(contEndDate);
		con.setContMoney(Double.valueOf(contMoney));
		con.setOperator(operator);
		con.setReceivableMoney(Double.valueOf(receivableMoney));
		con.setReceivedMoney(Double.valueOf(receivedMoney));
		con.setPayDate(payDate);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			con.setExpireDays(sdf.parse(expireDays));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		con.setReceivableDate(receivableDate);
		con.setContType(contType);
		con.setStampTaxRate(stampTaxRate);
		con.setStampTax(Double.valueOf(stampTax));
		con.setStampPayDate(stampPayDate);
		
		condao.save(con);
		List<Contract> list = condao.list();
		req.setAttribute("contractList", list);
		
		req.getRequestDispatcher("/jsp/main.jsp").forward(req, resp);
		
	}

}
