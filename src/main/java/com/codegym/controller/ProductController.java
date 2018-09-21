package com.codegym.controller;

import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;
import org.springframework.stereotype.Controller;

@Controller
public class ProductController {
    private ProductService productService = new ProductServiceImpl();
}
