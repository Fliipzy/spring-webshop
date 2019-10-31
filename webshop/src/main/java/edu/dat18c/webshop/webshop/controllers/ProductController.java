package edu.dat18c.webshop.webshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/products/view/{id}")
    public String viewProduct(@PathVariable int id, Model model) 
    {
        model.addAttribute("product", productService.findProductById(id));
        return "product/view";
    }

    @GetMapping("/products/create")
    public String createProduct() 
    {
        return "product/create";
    }

    @PostMapping("/products/create")
    public String saveProduct(@ModelAttribute Product product) 
    {
        productService.createProduct(product);
        return "redirect:/products";
    }

    @GetMapping("/products/update/{id}")
    public String editProduct(@PathVariable int id, Model model) 
    {
        model.addAttribute("product", productService.findProductById(id));
        return "product/update";
    }

    @PostMapping("/products/update")
    public String updateProduct(@ModelAttribute Product product) 
    {
        productService.updateProduct(product);
        return "redirect:/products";
    }
}