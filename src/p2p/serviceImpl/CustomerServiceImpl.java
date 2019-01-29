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
	public void updatePassword(String password) {
		// TODO 自动生成的方法存根

	}

}
