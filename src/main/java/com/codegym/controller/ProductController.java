package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.List;

@Controller
public class ProductController {
    private ProductService productService = new ProductServiceImpl();

    @GetMapping(value = "/products")
    public String showListProducts(Model model) {
        List<Product> products = this.productService.findAll();
        model.addAttribute("products", products);
        return "/product/list";
    }

    @GetMapping(value = "/product/create")
    public String showFormCreate(Model model) {
        model.addAttribute("product", new Product());
        return "/product/create";
    }

    @PostMapping(value = "/product/save")
    public String createProduct(Product product) {
        product.setId((int) (Math.random()*1000));
        productService.save(product);
        return "redirect:/products";
    }
}
