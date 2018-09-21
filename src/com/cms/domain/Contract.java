package com.cms.domain;

import java.util.Date;

public class Contract {

	private String contId;
	private String contName;
	private Long custId;
	private String contBeginDate;
	private String  contEndDate;
	private double contMoney;
	private String operator;
	private double receivableMoney;
	private double receivedMoney;
	private double payableMoney;
	private double paidMoney;
	private double balance;
	private String payDate;
	private Date expireDays;
	private String receivableDate;
	private String contType;
	private String stampTaxRate;
	private double stampTax;
	private String stampPayDate;
	
	public Contract(){}

	public Contract(String contId, String contName, Long custId, String contBeginDate, String contEndDate, double contMoney,
			String operator, double receivableMoney, double receivedMoney, double payableMoney, double paidMoney,
			double balance, String payDate, Date expireDays, String receivableDate, String contType, String stampTaxRate,
			double stampTax, String stampPayDate) {
		this.contId = contId;
		this.contName = contName;
		this.custId = custId;
		this.contBeginDate = contBeginDate;
		this.contEndDate = contEndDate;
		this.contMoney = contMoney;
		this.operator = operator;
		this.receivableMoney = receivableMoney;
		this.receivedMoney = receivedMoney;
		this.payableMoney = payableMoney;
		this.paidMoney = paidMoney;
		this.balance = balance;
		this.payDate = payDate;
		this.expireDays = expireDays;
		this.receivableDate = receivableDate;
		this.contType = contType;
		this.stampTaxRate = stampTaxRate;
		this.stampTax = stampTax;
		this.stampPayDate = stampPayDate;
	}

	public String getContId() {
		return contId;
	}

	public void setContId(String contId) {
		this.contId = contId;
	}

	public String getContName() {
		return contName;
	}

	public void setContName(String contName) {
		this.contName = contName;
	}

	public Long getCustId() {
		return custId;
	}

	public void setCustId(Long custId) {
		this.custId = custId;
	}

	public String getContBeginDate() {
		return contBeginDate;
	}

	public void setContBeginDate(String contBeginDate) {
		this.contBeginDate = contBeginDate;
	}

	public String getContEndDate() {
		return contEndDate;
	}

	public void setContEndDate(String contEndDate) {
		this.contEndDate = contEndDate;
	}

	public double getContMoney() {
		return contMoney;
	}

	public void setContMoney(double contMoney) {
		this.contMoney = contMoney;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public double getReceivableMoney() {
		return receivableMoney;
	}

	public void setReceivableMoney(double receivableMoney) {
		this.receivableMoney = receivableMoney;
	}

	public double getReceivedMoney() {
		return receivedMoney;
	}

	public void setReceivedMoney(double receivedMoney) {
		this.receivedMoney = receivedMoney;
	}

	public double getPayableMoney() {
		return payableMoney;
	}

	public void setPayableMoney(double payableMoney) {
		this.payableMoney = payableMoney;
	}

	public double getPaidMoney() {
		return paidMoney;
	}

	public void setPaidMoney(double paidMoney) {
		this.paidMoney = paidMoney;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

	public Date getExpireDays() {
		return expireDays;
	}

	public void setExpireDays(Date expireDays) {
		this.expireDays = expireDays;
	}

	public String getReceivableDate() {
		return receivableDate;
	}

	public void setReceivableDate(String receivableDate) {
		this.receivableDate = receivableDate;
	}

	public String getContType() {
		return contType;
	}

	public void setContType(String contType) {
		this.contType = contType;
	}

	public String getStampTaxRate() {
		return stampTaxRate;
	}

	public void setStampTaxRate(String stampTaxRate) {
		this.stampTaxRate = stampTaxRate;
	}

	public double getStampTax() {
		return stampTax;
	}

	public void setStampTax(double stampTax) {
		this.stampTax = stampTax;
	}

	public String getStampPayDate() {
		return stampPayDate;
	}

	public void setStampPayDate(String stampPayDate) {
		this.stampPayDate = stampPayDate;
	}

	@Override
	public String toString() {
		return "Contract [contId=" + contId + ", contName=" + contName + ", custId=" + custId + ", contBeginDate="
				+ contBeginDate + ", contEndDate=" + contEndDate + ", contMoney=" + contMoney + ", operator=" + operator
				+ ", receivableMoney=" + receivableMoney + ", receivedMoney=" + receivedMoney + ", payableMoney="
				+ payableMoney + ", paidMoney=" + paidMoney + ", balance=" + balance + ", payDate=" + payDate
				+ ", expireDays=" + expireDays + ", receivableDate=" + receivableDate + ", contType=" + contType
				+ ", stampTaxRate=" + stampTaxRate + ", stampTax=" + stampTax + ", stampPayDate=" + stampPayDate + "]";
	}
	
	
	
	
	
	
	
}
