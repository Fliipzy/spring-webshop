package edu.dat18c.webshop.webshop.models;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Product
 */
@Entity
public class Product 
{
    @Id
    private int id;
    private String name;
    private String description;
    private float price;

    public Product() {}

    public Product(int id, String name, String description, float price) 
    {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }

    public int getId() 
    {
        return id;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public String getName() 
    {
        return name;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public String getDescription() 
    {
        return description;
    }

    public void setDescription(String description) 
    {
        this.description = description;
    }

    public float getPrice() 
    {
        return price;
    }

    public void setPrice(float price) 
    {
        this.price = price;
    }

}