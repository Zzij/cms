package com.cms.query;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.domain.User;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class UserinfoQuery {
	public User get(String name) {

		String sql = "select * from t_user where username=?";
		List<User> userList = JdbcTemplate.query(sql, new UserinfoResultSetHandl(), name);
		return userList.size()==1?userList.get(0):null;
	}
	class UserinfoResultSetHandl implements IResultSetHandler<List<User>>{

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

}
