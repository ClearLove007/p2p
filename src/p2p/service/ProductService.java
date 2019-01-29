package p2p.service;

import p2p.model.Product;

public interface ProductService {

	public Product findAllProduct() throws Exception;
	
	public Product findProductById(int pid) throws Exception;
	
	public void deleteProductById(int pid) throws Exception;
	
	public void insertProduct(Product product) throws Exception;
	
	public Product findProductByName(String name) throws Exception;
}
