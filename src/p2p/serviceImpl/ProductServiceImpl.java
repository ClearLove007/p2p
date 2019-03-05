package p2p.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import p2p.mapper.ProductMapper;
import p2p.model.Product;
import p2p.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public List<Product> findAllProduct() throws Exception {
		// TODO 自动生成的方法存根
		return productMapper.findAllProduct();
	}

	@Override
	public Product findProductById(int pid) throws Exception {
		// TODO 自动生成的方法存根
		return productMapper.findProductById(pid);
	}

	@Override
	public void deleteProductById(int pid) throws Exception {
		// TODO 自动生成的方法存根
		productMapper.deleteProductById(pid);
	}

	@Override
	public void insertProduct(Product product) throws Exception {
		// TODO 自动生成的方法存根
		productMapper.insertProduct(product);
	}

	@Override
	public Product findProductByName(String name) throws Exception {
		// TODO 自动生成的方法存根
		return productMapper.findProductByName(name);
	}

}
