package com.cms.template;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cms.handle.IResultSetHandler;
import com.cms.util.JdbcUtil;
import com.cms.util.JdbcUtil_druid;


public class JdbcTemplate {
	public static void update(String sql, Object... params){
		//DML
		Connection con = null;
		PreparedStatement pst = null;
		try {

			con = JdbcUtil_druid.getCon();
			pst = con.prepareStatement(sql);
			for (int index = 0; index < params.length; index++) {
				pst.setObject(index + 1, params[index]);
			}
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con, pst);
		}
	}
	//DQL
	public static <T> T query(String sql, IResultSetHandler<T> irsh, Object... params){
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {

			con = JdbcUtil.getCon();
			pst = con.prepareStatement(sql);
			for (int index = 0; index < params.length; index++) {
				pst.setObject(index + 1, params[index]);
			}
			rs = pst.executeQuery();
			
			return irsh.handler(rs);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con, pst, rs);
		}
		return null;
		
	}

}
