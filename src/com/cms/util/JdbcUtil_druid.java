package com.cms.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;

public class JdbcUtil_druid {

	private static Properties p = new Properties();
	private static DataSource dataSource = null;
	// 静态代码块 只在声明是调用一次
	static {
		try {
			// 注册驱动
			p.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties"));
			dataSource =  DruidDataSourceFactory.createDataSource(p);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 获取数据库连接 con
	public static Connection getCon() {
		try {
			
			return  dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	// 关闭 资源try-catch alt+shift+z
	public static void close(Connection con, Statement stm, ResultSet rs) {

		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stm != null) {
					stm.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (con != null) {
						con.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void close(Connection con, Statement stm) {

		try {
			if (stm != null) {
				stm.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
