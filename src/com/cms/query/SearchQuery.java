package com.cms.query;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.domain.Contract;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class SearchQuery {
	
	public List<Contract> searchQuery(Integer type, String info){
		
		//String[] str={"%contId%","%contName%","%custId%","%operator%","%contType%"};
		switch (type) {
		case 1:
			String sql1= "select * from t_contract where contId like ?";
			return JdbcTemplate.query(sql1, new SearchResultSetHandle(), "%"+ info +"%");
		case 2:
			String sql2= "select * from t_contract where contName like ?";
			return JdbcTemplate.query(sql2, new SearchResultSetHandle(), "%"+ info +"%");
		case 3:
			String sql3= "select * from t_contract where custId like ?";
			return JdbcTemplate.query(sql3, new SearchResultSetHandle(), "%"+ info +"%");
		case 4:
			String sql4= "select * from t_contract where operator like ?";
			return JdbcTemplate.query(sql4, new SearchResultSetHandle(), "%"+ info +"%");
		case 5:
			String sql5= "select * from t_contract where contType like ?";
			return JdbcTemplate.query(sql5, new SearchResultSetHandle(), "%"+ info +"%");
			
		}
		return null;
		
		
	}
	class SearchResultSetHandle implements IResultSetHandler<List<Contract>>{

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
		
	}

}
