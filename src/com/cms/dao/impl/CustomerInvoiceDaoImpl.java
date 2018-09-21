package com.cms.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.domain.CustomerInvoice;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class CustomerInvoiceDaoImpl implements IBaseDao<CustomerInvoice>{

	@Override
	public void save(CustomerInvoice invo) {

		String sql = "insert into t_customerInvoice values(?,?,?,?,?)";
		Object[] params = {invo.getInvoiceId(),invo.getContId(),invo.getReceivableMoney(),invo.getReceivedMoney(),invo.getIsInvoice()};
		JdbcTemplate.update(sql, params);
	}

	@Override
	public void delete(Long invoId) {

		String sql = "delete from t_customerInvoice where invoiceId = ?";
		JdbcTemplate.update(sql, invoId);
	}

	@Override
	public void update(CustomerInvoice invo) {

		String sql = "update t_customerInvoice set receivableMoney=? , receivedMoney=? , isInvoice=? where invoiceId=? ";
		Object[] params = {invo.getReceivableMoney(), invo.getReceivedMoney(), invo.getIsInvoice(), invo.getInvoiceId()};
		JdbcTemplate.update(sql, params);
		
	}

	@Override
	public CustomerInvoice get(long invoid) {
		String sql = "select * from t_customerInvoice where invoiceId=?";
		List<CustomerInvoice> invoList = JdbcTemplate.query(sql, new CustomerInvoiceResultSetHandl(), invoid);
		return invoList.size()==1?invoList.get(0):null;
	}

	@Override
	public List<CustomerInvoice> list() {
		String sql = "select * from t_customerInvoice";
		return JdbcTemplate.query(sql, new CustomerInvoiceResultSetHandl());
		
		
	}
	class CustomerInvoiceResultSetHandl implements IResultSetHandler<List<CustomerInvoice>>{

		@Override
		public List<CustomerInvoice> handler(ResultSet rs) throws SQLException {
			List<CustomerInvoice> invoList =new ArrayList<>();
			while(rs.next()){
				CustomerInvoice invo = new CustomerInvoice();
				invo.setInvoiceId(rs.getString("invoiceId"));
				invo.setContId(rs.getString("contId"));
				invo.setReceivableMoney(rs.getDouble("receivableMoney"));
				invo.setReceivedMoney(rs.getDouble("receivedMoney"));
				invo.setIsInvoice(rs.getByte("isInvoice"));
				invoList.add(invo);
			}
			return invoList;
		}
		
	}

}
