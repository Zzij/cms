package com.cms.dao;

import java.util.List;

import com.cms.domain.Customer;



public interface ICustomerDao {
	//增删改查
		void save(Customer cus);
		
		void delete(Long cusid);

		void update(Customer cus);

		Customer get(long cusid);

		List<Customer> list();

}
