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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @GetMapping(value = "/product/view")
    public String viewProduct(@RequestParam("id") int id, Model model) {
        Product product = this.productService.findById(id);
        if (product == null) {
            return "error.404";
        }

        model.addAttribute("product", product);
        return "/product/view";
    }

    @GetMapping(value = "/product/create")
    public String showFormCreate(Model model) {
        model.addAttribute("product", new Product());
        return "/product/create";
    }

    @PostMapping(value = "/product/save")
    public String createProduct(Product product, RedirectAttributes redirect) {
        product.setId((int) (Math.random() * 1000));
        productService.save(product);
        redirect.addFlashAttribute("messgae", "Product " + product.getName() + " was create successfully!");
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
    public ModelAndView updateProduct(@PathVariable("id") int id, Product product) {
        productService.update(id, product);
        ModelAndView modelAndView = new ModelAndView("/product/edit");
        modelAndView.addObject("product", product);
        modelAndView.addObject("messages", "Product updated successfully!");
        return modelAndView;
    }

    @GetMapping("/product/delete")
    public ModelAndView showFormDelete(@RequestParam("id") int id) {
        Product product = this.productService.findById(id);
        ModelAndView modelAndView;

        if (product == null) {
            modelAndView = new ModelAndView("error.404");
        }

        modelAndView = new ModelAndView("/product/delete");
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @PostMapping("/product/delete/{id}")
    public ModelAndView removeProduct(@PathVariable("id") int id, RedirectAttributes redirect) {
        Product product = this.productService.findById(id);
        productService.remove(id);
        redirect.addFlashAttribute("messgae", "Product " + product.getName() + " was delete successfully!");
        return new ModelAndView("redirect:/products");
    }
}
