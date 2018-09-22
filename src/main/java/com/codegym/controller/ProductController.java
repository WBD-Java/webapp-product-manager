package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.ProductService;
import com.codegym.service.ProductServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

    @GetMapping("product/edit")
    public ModelAndView showEditForm(@RequestParam("id") int id) {
        Product product = this.productService.findById(id);
        ModelAndView modelAndView;
        if (product == null) {
            modelAndView = new ModelAndView("error.404");
            return modelAndView;
        }
        modelAndView = new ModelAndView("/product/edit");
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @PostMapping("product/update/{id}")
    public ModelAndView updateProduct(@PathVariable("id")int id, Product product) {
        productService.update(id, product);
        ModelAndView modelAndView = new ModelAndView("/product/edit");
        modelAndView.addObject("product", product);
        modelAndView.addObject("messages", "Product updated successfully");
        return modelAndView;
    }
}
