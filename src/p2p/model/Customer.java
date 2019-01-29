package p2p.model;

public class Customer {

	private String cid;
	private String password;
	private String idcard;
	private String tradepassword;
	private String email;
	private String bankcard;
	
	public String getBankcard() {
		return bankcard;
	}

	public void setBankcard(String bankcard) {
		this.bankcard = bankcard;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getTradepassword() {
		return tradepassword;
	}

	public void setTradepassword(String tradepassword) {
		this.tradepassword = tradepassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", password=" + password + ", idcard=" + idcard + ", tradepassword="
				+ tradepassword + ", bankcard=" + bankcard + ", email=" + email + "]";
	}
	
	
}
