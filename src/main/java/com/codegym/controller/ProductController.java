package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ProductController {
    private ProductService productService = new ProductServiceImpl();

    @GetMapping(value = "/products")
    public String showListProducts(ModelMap model) {
        List<Product> products = this.productService.findAll();
        model.addAttribute("products", products);
        return "/product/list";
    }
}
