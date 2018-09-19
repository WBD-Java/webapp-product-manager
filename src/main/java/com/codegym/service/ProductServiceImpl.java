package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;
    static{
        products = new HashMap<>();
        products.put(1, new Product(1, "Cốc Cắm Bút 9172", 30000, "Sản phẩm được làm từ sắt sơn tĩnh điện, thiết kế gọn nhẹ", "Deli"));
        products.put(2, new Product(2, "Thước Eke", 20000, "Mặt thước có vạch chia kích thước rõ ràng", " VPP An Phát"));
        products.put(3, new Product(3, "Hộp Cắm Bút HV08", 99000, "Làm bằng gỗ tự nhiên", "Nhatvywood"));
        products.put(4, new Product(4, "Bút Xoá FO-CP01", 19000, "Mực bút xóa ra đều", "Flexoffice"));
        products.put(5, new Product(5, "Tẩy Stabilo Exam", 16000, "Tẩy chì hiệu quả, rất được ưa chuộng, đóng gói độc lập, chống bụi.", "Stabilo"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }
}
