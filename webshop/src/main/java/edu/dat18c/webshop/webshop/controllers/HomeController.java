package edu.dat18c.webshop.webshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * HomeController
 */
@Controller
public class HomeController 
{
    @GetMapping("/")
    public String getHome() 
    {
        return "home/index";
    }    
}