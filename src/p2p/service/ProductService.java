package p2p.service;

import java.util.List;

import p2p.model.Product;

public interface ProductService {

	public List<Product> findAllProduct() throws Exception;
	
	public Product findProductById(int pid) throws Exception;
	
	public void deleteProductById(int pid) throws Exception;
	
	public void insertProduct(Product product) throws Exception;
	
	public Product findProductByName(String name) throws Exception;
	
	public List<Product> findProduct3() throws Exception;
	
	public List<Product> findProduct6() throws Exception;
	
	public List<Product> findProduct12() throws Exception;
}
