package com.cms.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cms.dao.IBaseDao;
import com.cms.domain.Contract;
import com.cms.handle.IResultSetHandler;
import com.cms.template.JdbcTemplate;

public class ContractDaoImpl implements IBaseDao<Contract>{

	@Override
	public void save(Contract cont) {

		String sql = "insert into t_contract values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {cont.getContId(),cont.getContName(),cont.getCustId(),cont.getContBeginDate(),cont.getContEndDate(),cont.getContMoney(),cont.getOperator(),
				cont.getReceivableMoney(),cont.getReceivedMoney(),cont.getPayableMoney(),cont.getPaidMoney(),cont.getBalance(),cont.getPayDate(),
				cont.getExpireDays(),cont.getReceivableDate(),cont.getContType(),cont.getStampTaxRate(),cont.getStampTax(),cont.getStampPayDate()};
		JdbcTemplate.update(sql, params);
		
	}

	@Override
	public void delete(Long id) {

		String sql = "delete from t_contract where contId=?";
		JdbcTemplate.update(sql,id);
	}

	@Override
	public void update(Contract cont) {
		String sql = "update t_contract set contName=?,custId=?,contBeginDate=?,contEndDate= ?,  contMoney=?,"
				+ " operator=?,receivableMoney=?, receivedMoney=?, payableMoney=?,paidMoney=?,balance=?, payDate=?,"
				+ " expireDays=?, receivableDate=?, contType=?, stampTaxRate=?, stampTax=?, stampPayDate=? where contId = ?";
		Object[] params = { cont.getContName(),cont.getCustId(),cont.getContBeginDate(),cont.getContEndDate(),cont.getContMoney(),cont.getOperator(),
				cont.getReceivableMoney(),cont.getReceivedMoney(),cont.getPayableMoney(),cont.getPaidMoney(),cont.getBalance(),cont.getPayDate(),
				cont.getExpireDays(),cont.getReceivableDate(),cont.getContType(),cont.getStampTaxRate(),cont.getStampTax(),cont.getStampPayDate(),cont.getContId()};
		JdbcTemplate.update(sql, params);
	}

	@Override
	public Contract get(long contId) {
		String sql = "select * from t_contract where contId=?";
		List<Contract> conList = JdbcTemplate.query(sql, new ContractResultSetHandle(), contId);
		return conList.size()==1?conList.get(0):null;
	}

	@Override
	public List<Contract> list() {
		String sql = "select * from t_contract ";
		
		return JdbcTemplate.query(sql, new ContractResultSetHandle());
	}
	class ContractResultSetHandle implements IResultSetHandler<List<Contract>>{

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
