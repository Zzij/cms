package com.cms.dao;

import java.util.List;

public interface IBaseDao<T> {

	void save(T obj);
	
	void delete(Long id);

	void update(T obj);

	T get(long contId);

	List<T> list();
}
