package p2p.mapper;

import org.apache.ibatis.annotations.Param;

import p2p.model.Customer;

public interface CustomerMapper {

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
	public void updatePassword(@Param("newPassword")String newPassword,@Param("cid")String cid);
	
	/*
	 * 查询交易密码
	 */
	public String selectUpdatePassword(String cid);
	
	/*
	 * 修改交易密码
	 */
	public void updateTradePassword(@Param("newTradePassword")String newPassword,@Param("cid")String cid);
	
	/*
	 * 查询银行卡
	 */
	public String selectBankCard(@Param("cid")String cid);
	
	/*
	 * 查询余额
	 */
	public double selectMoney(@Param("cid")String cid);
	
	/*
	 * 更新余额
	 */
	public void updateMoney(@Param("price")Double price,@Param("cid")String cid);
}
