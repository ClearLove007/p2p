package p2p.mapper;

import p2p.model.Product;

public interface ProductMapper {

	public Product findAllProduct() throws Exception;
	
	public Product findProductById(int pid) throws Exception;
	
	public void deleteProductById(int pid) throws Exception;
	
	public void insertProduct(Product product) throws Exception;
	
	public Product findProductByName(String name) throws Exception;
}
