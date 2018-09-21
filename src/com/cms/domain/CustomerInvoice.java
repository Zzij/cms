package com.cms.domain;

public class CustomerInvoice {
	
	private String invoiceId;
	private String contId;
	private double receivableMoney;
	private double receivedMoney;
	private byte isInvoice;
	
	public CustomerInvoice(){}

	public CustomerInvoice(String invoiceId, String contId, double receivableMoney, double receivedMoney,
			byte isInvoice) {
		this.invoiceId = invoiceId;
		this.contId = contId;
		this.receivableMoney = receivableMoney;
		this.receivedMoney = receivedMoney;
		this.isInvoice = isInvoice;
	}

	public String getInvoiceId() {
		return invoiceId;
	}

	public void setInvoiceId(String invoiceId) {
		this.invoiceId = invoiceId;
	}

	public String getContId() {
		return contId;
	}

	public void setContId(String contId) {
		this.contId = contId;
	}

	public double getReceivableMoney() {
		return receivableMoney;
	}

	public void setReceivableMoney(double receivableMoney2) {
		this.receivableMoney = receivableMoney2;
	}

	public double getReceivedMoney() {
		return receivedMoney;
	}

	public void setReceivedMoney(double receivedMoney) {
		this.receivedMoney = receivedMoney;
	}

	public byte getIsInvoice() {
		return isInvoice;
	}

	public void setIsInvoice(byte isInvoice) {
		this.isInvoice = isInvoice;
	}

	@Override
	public String toString() {
		return "CustomerInvoice [invoiceId=" + invoiceId + ", contId=" + contId + ", receivableMoney=" + receivableMoney
				+ ", receivedMoney=" + receivedMoney + ", isInvoice=" + isInvoice + "]";
	}
	

	
	
}
