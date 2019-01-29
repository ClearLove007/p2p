package p2p.mapper;

import p2p.model.Customer;

public interface CustomerMapper {

	/*
	 * 注册功能
	 */
	public void insertCustomerInformation(Customer customer);
	
	/*
	 * update密码
	 */
	public void updatePassword(String password);
	
	/*
	 * 验证id
	 */
	public Customer selectCid(String cid);
}
