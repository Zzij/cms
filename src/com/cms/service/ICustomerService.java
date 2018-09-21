package com.cms.service;

import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.domain.Customer;

public interface ICustomerService extends IBaseDao<Customer>{

	public List<Customer> query(String name); 
}
