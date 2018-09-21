package com.cms.domain;

public class Customer {

	private Long custId;
	private String custCompany;
	private String custName;
	private String custContact;
	
	public Customer(){}
	
	public Customer(Long custId, String custCompany, String custName, String custContact) {
		this.custId = custId;
		this.custCompany = custCompany;
		this.custName = custName;
		this.custContact = custContact;
	}

	public Long getCustId() {
		return custId;
	}

	public void setCustId(Long custId) {
		this.custId = custId;
	}

	public String getCustCompany() {
		return custCompany;
	}

	public void setCustCompany(String custCompany) {
		this.custCompany = custCompany;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustContact() {
		return custContact;
	}

	public void setCustContact(String custContact) {
		this.custContact = custContact;
	}

	@Override
	public String toString() {
		return "Customer [custId=" + custId + ", custCompany=" + custCompany + ", custName=" + custName
				+ ", custContact=" + custContact + "]";
	}
	
}
