package com.cms.dao;

import java.util.List;

import com.cms.domain.Contract;



public interface IContractDao {
	
	//增删改查
	void save(Contract cont);
	
	void delete(Long id);

	void update(Contract cont);

	Contract get(long contId);

	List<Contract> list();

}
