package edu.dat18c.webshop.webshop.repositories;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import edu.dat18c.webshop.webshop.models.Product;

/**
 * ProductRepository
 */
@Repository
public class ProductRepository
{
    @Autowired
    private JdbcTemplate template;
    
    public int createProduct(Product product)
    {
        String sql = "INSERT INTO product (name, price, description) VALUES (?, ?, ?)";
        return template.update(sql, product.getName(), product.getPrice(), product.getDescription());
    }

    public List<Product> fetchAll()
    {
        String sql = "SELECT * FROM product";
        RowMapper<Product> rowMapper = BeanPropertyRowMapper.newInstance(Product.class);
        return template.query(sql, rowMapper);
    }

    public Product findProductById(int id)
    {
        String sql = "SELECT * FROM product WHERE id = ?";
        return template.queryForObject(sql, BeanPropertyRowMapper.newInstance(Product.class), id);
    }

    public int updateProduct(Product product)
    {
        String sql = "UPDATE product SET name = ?, price = ?, description = ? WHERE id = ?";
        return template.update(sql, product.getName(), product.getPrice(), product.getDescription(), product.getId());
    }
    
    public int deleteById(int id)
    {
        String sql = "DELETE FROM product WHERE id = ?";
        return template.update(sql, id);
    }
}