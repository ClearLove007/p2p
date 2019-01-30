package p2p.service;

import java.util.List;

import p2p.model.Customer;

public interface CustomerService {

	/*
	 * 注册功能
	 */
	public void insertCustomerInformation(Customer customer);
	
	/*
	 * 验证身份
	 */
	public Customer validation(Customer customer);
}
