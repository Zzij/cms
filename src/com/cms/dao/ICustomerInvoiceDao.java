package com.cms.dao;

import java.util.List;

import com.cms.domain.CustomerInvoice;


public interface ICustomerInvoiceDao {
	
	//增删改查
	void save(CustomerInvoice invo);
			
	void delete(Long invoId);

	void update(CustomerInvoice invo);

	CustomerInvoice get(long invoid);

	List<CustomerInvoice> list();

}
