package com.cms.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.domain.Customer;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class CustomerDaoImpl implements IBaseDao<Customer>{

	@Override
	public void save(Customer cus) {

		String sql = "insert into t_customer values(?,?,?,?)";
		Object[] params = {cus.getCustId(),cus.getCustCompany(),cus.getCustName(),cus.getCustContact()};
		JdbcTemplate.update(sql, params);
		
	}

	@Override
	public void delete(Long cusId) {

		String sql = "delete from t_customer where custId = ?";
		JdbcTemplate.update(sql, cusId);
	}

	@Override
	public void update(Customer cus) {

		String sql = "update t_customer set custName=? where custId = ?";
		Object[] params = { cus.getCustName(), cus.getCustId()};
		JdbcTemplate.update(sql, params);
	}

	@Override
	public Customer get(long cusid) {
		String sql = "select * from t_customer where custId=?";
		List<Customer> cusList = JdbcTemplate.query(sql, new CustomerResultSetHandl(), cusid);
		return cusList.size()==1?cusList.get(0):null;
	}

	@Override
	public List<Customer> list() {
		String sql = "select * from t_customer";
		return JdbcTemplate.query(sql, new CustomerResultSetHandl());
	}
	class CustomerResultSetHandl implements IResultSetHandler<List<Customer>>{

		@Override
		public List<Customer> handler(ResultSet rs) throws SQLException {
			List<Customer> cusList = new ArrayList<>();
			while(rs.next()){
				Customer cus = new Customer();
				cus.setCustId(rs.getLong("custId"));
				cus.setCustCompany(rs.getString("custCompany"));
				cus.setCustName(rs.getString("custName"));
				cus.setCustContact(rs.getString("custContact"));
				cusList.add(cus);
			}
			return cusList;
		}
		
	}

}
