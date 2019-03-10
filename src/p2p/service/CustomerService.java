package p2p.service;

import org.apache.ibatis.annotations.Param;

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
	
	/*
	 * 查询密码
	 */
	public String selectPassword(String cid);
	
	/*
	 * 修改密码
	 */
	public void updatePassword(String newPassword,String cid);
	
	
	/*
	 * 查询交易密码
	 */
	public String selectUpdatePassword(String cid);
	
	/*
	 * 修改交易密码
	 */
	public void updateTradePassword(String newTradePassword,String cid);
	
	/*
	 * 查询银行卡
	 */
	public String selectBankCard(String cid);
	
	/*
	 * 查询余额
	 */
	public double selectMoney(String cid);
	
	/*
	 * 更新余额
	 */
	public void updateMoney(Double price,String cid);
}
