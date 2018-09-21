package com.cms.query;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.domain.Contract;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class ExpireQuery {

	
	public List<Contract> Expirequery(Integer b, Integer expire){
		String sql = "select * from t_contract where datediff(expireDays ,CURDATE())>? and datediff(expireDays ,CURDATE())<=?";
		Object[] params={b,expire};
		return JdbcTemplate.query(sql, new IResultSetHandler<List<Contract>>() {

			@Override                               
			public List<Contract> handler(ResultSet rs) throws SQLException {
				List<Contract> conList =new  ArrayList<Contract>();
				while(rs.next()){
					Contract cont = new Contract();
					cont.setContId(rs.getString("contId"));
					cont.setContName(rs.getString("contName"));
					cont.setCustId(rs.getLong("custId"));
					cont.setContBeginDate(rs.getString("contBeginDate"));
					cont.setContEndDate(rs.getString("contEndDate"));
					cont.setContMoney(rs.getDouble("contMoney"));
					cont.setOperator(rs.getString("operator"));
					cont.setReceivableMoney(rs.getDouble("receivableMoney"));
					cont.setReceivedMoney(rs.getDouble("receivedMoney"));
					cont.setPayableMoney(rs.getDouble("payableMoney"));
					cont.setPaidMoney(rs.getDouble("paidMoney"));
					cont.setBalance(rs.getDouble("balance"));
					cont.setPayDate(rs.getString("payDate"));
					cont.setExpireDays(rs.getDate("expireDays"));
					cont.setReceivableDate(rs.getString("receivableDate"));
					cont.setContType(rs.getString("contType"));
					cont.setStampTaxRate(rs.getString("stampTaxRate"));
					cont.setStampTax(rs.getDouble("stampTax"));
					cont.setStampPayDate(rs.getString("stampPayDate"));
					conList.add(cont);
				}
				return conList;
			}
		}, params);
		
	}
}
