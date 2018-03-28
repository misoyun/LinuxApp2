package com.bit.aop;



@Service
public class ProductService {

	public ProductVO find(String name)
	{
		
		System.out.println("Product.find()...");
		return new ProductVO(name);
		
	}
	
}
