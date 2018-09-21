package com.cms.service.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.dao.impl.CustomerDaoImpl;
import com.cms.domain.Customer;
import com.cms.handle.IResultSetHandler;
import com.cms.service.ICustomerService;
import com.cms.template.JdbcTemplate;

public class CustomerServiceImpl implements ICustomerService{

	private IBaseDao<Customer> cusdao = new CustomerDaoImpl();
	@Override
	public void save(Customer obj) {
		cusdao.save(obj);
	}

	@Override
	public void delete(Long id) {
		cusdao.delete(id);
	}

	@Override
	public void update(Customer obj) {
		cusdao.update(obj);
	}

	@Override
	public Customer get(long contId) {
		return cusdao.get(contId);
	}

	@Override
	public List<Customer> list() {
		return cusdao.list();
	}

	@Override
	public List<Customer> query(String name) {
		String baseSql = "select * from t_customer where 1=1 ";
		StringBuffer sb = new StringBuffer();
		sb.append(" and custName like ?");
		return JdbcTemplate.query(baseSql+ sb, new IResultSetHandler<List<Customer>>() {

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
			
			
		}, name);
	}
	

}
