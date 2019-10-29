package edu.dat18c.webshop.webshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import edu.dat18c.webshop.webshop.models.Product;
import edu.dat18c.webshop.webshop.services.ProductService;

/**
 * ProductController
 */
@Controller
public class ProductController 
{
    @Autowired
    private ProductService productService;

    @GetMapping("/products")
    public String getProducts(Model model) 
    {
        model.addAttribute("products", productService.fetchAll());
        return "product/products";
    }

    @GetMapping("/products/create")
    public String createProduct() 
    {
        return "product/create";
    }

    @PostMapping("/products/create")
    public String saveProduct(@ModelAttribute Product product) 
    {
        return "redirect:/products";
    }
}