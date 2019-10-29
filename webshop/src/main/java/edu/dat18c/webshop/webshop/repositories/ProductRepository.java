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
    
    public List<Product> fetchAll()
    {
        String sql = "SELECT * FROM product";
        RowMapper<Product> rowMapper = BeanPropertyRowMapper.newInstance(Product.class);
        return template.query(sql, rowMapper);
    }
}