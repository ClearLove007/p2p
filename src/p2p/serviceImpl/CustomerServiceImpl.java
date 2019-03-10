package p2p.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import p2p.mapper.CustomerMapper;
import p2p.model.Customer;
import p2p.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;
	
	@Override
	public void insertCustomerInformation(Customer customer) {
		// TODO 自动生成的方法存根
		customerMapper.insertCustomerInformation(customer);
	}

	@Override
	public Customer validation(Customer customer) {
		// TODO 自动生成的方法存根
		return customerMapper.validation(customer);
	}

	@Override
	public String selectPassword(String cid) {
		// TODO 自动生成的方法存根
		return customerMapper.selectPassword(cid);
	}

	@Override
	public void updatePassword(String newPassword,String cid) {
		// TODO 自动生成的方法存根
		customerMapper.updatePassword(newPassword,cid);
	}

	@Override
	public void updateTradePassword(String newTradePassword, String cid) {
		// TODO 自动生成的方法存根
		customerMapper.updateTradePassword(newTradePassword, cid);
	}

	@Override
	public String selectUpdatePassword(String cid) {
		// TODO 自动生成的方法存根
		return customerMapper.selectUpdatePassword(cid);
	}

	@Override
	public String selectBankCard(String cid) {
		// TODO 自动生成的方法存根
		return customerMapper.selectBankCard(cid);
	}

	@Override
	public double selectMoney(String cid) {
		// TODO 自动生成的方法存根
		return customerMapper.selectMoney(cid);
	}

	@Override
	public void updateMoney(Double price, String cid) {
		// TODO 自动生成的方法存根
		customerMapper.updateMoney(price, cid);
	}

}
