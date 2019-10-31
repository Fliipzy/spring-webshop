package edu.dat18c.webshop.webshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * AboutController
 */
@Controller
public class AboutController 
{
    @GetMapping("/")
    public String getIndex() 
    {
        return "about/index";
    }
}