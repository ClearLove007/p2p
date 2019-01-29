package p2p.service;

import p2p.model.Customer;

public interface CustomerService {

	/*
	 * 注册功能
	 */
	public void insertCustomerInformation(Customer customer);
	
	/*
	 * update密码
	 */
	public void updatePassword(String password);
}
