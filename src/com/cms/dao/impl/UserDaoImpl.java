package com.cms.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.domain.User;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class UserDaoImpl implements IBaseDao<User>{

	@Override
	public void save(User user) {
		String sql = "insert into t_user(username,password) values(?,?)";
		Object[] params = {user.getUsername(),user.getPassword()};
		JdbcTemplate.update(sql, params);
	}

	@Override
	public void delete(Long userId) {

		String sql = "delete from t_user where uid = ?";
		JdbcTemplate.update(sql, userId);
	}

	@Override
	public void update(User user) {

		String sql = "update t_user set username=? , password=?  where uid=? ";
		Object[] params = {user.getUsername(),user.getPassword(),user.getUid()};
		JdbcTemplate.update(sql, params);
	}

	@Override
	public User get(long userid) {

		String sql = "select * from t_user where uid=?";
		List<User> userList = JdbcTemplate.query(sql, new UserResultSetHandl(), userid);
		return userList.size()==1?userList.get(0):null;
	}

	@Override
	public List<User> list() {
		String sql = "select * from t_user ";
		return JdbcTemplate.query(sql, new UserResultSetHandl());
	}
	class UserResultSetHandl implements IResultSetHandler<List<User>>{

		@Override
		public List<User> handler(ResultSet rs) throws SQLException {
			List<User> userList = new ArrayList<>();
			while(rs.next()){
				User user = new User();
				user.setUid(rs.getLong("uid"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				userList.add(user);
			}
			return userList;
			
		}
		
	}
	public User getPassword(String username) {
		String sql = "select * from t_user where username=?";
		List<User> userList = JdbcTemplate.query(sql, new UserResultSetHandl(), username);
		return userList.size()==1?userList.get(0):null;
	}

}
