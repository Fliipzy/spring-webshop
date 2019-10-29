package edu.dat18c.webshop.webshop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.dat18c.webshop.webshop.models.Product;
import edu.dat18c.webshop.webshop.repositories.ProductRepository;

/**
 * ProductService
 */
@Service
public class ProductService 
{
    @Autowired
    private ProductRepository productRepository;

    public List<Product> fetchAll()
    {
        return productRepository.fetchAll();
    }
}