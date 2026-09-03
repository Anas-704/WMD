package com.example.crud;

import org.springframework.web.bind.annotation.*;
import java.util.*;

@RestController
@RequestMapping("/products")
public class ProductController {

    private List<Product> products = new ArrayList<>(
            Arrays.asList(
                    new Product(1, "Laptop", 50000),
                    new Product(2, "Mouse", 500)
            )
    );

    // CREATE
    @PostMapping
    public Product addProduct(@RequestBody Product product) {
        products.add(product);
        return product;
    }

    // READ ALL
    @GetMapping
    public List<Product> getProducts() {
        return products;
    }

    // READ BY ID
    @GetMapping("/{id}")
    public Product getProduct(@PathVariable int id) {
        return products.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElse(null);
    }

    // UPDATE
    @PutMapping("/{id}")
    public Product updateProduct(
            @PathVariable int id,
            @RequestBody Product updatedProduct) {

        for (Product p : products) {
            if (p.getId() == id) {
                p.setName(updatedProduct.getName());
                p.setPrice(updatedProduct.getPrice());
                return p;
            }
        }

        return null;
    }

    // DELETE
    @DeleteMapping("/{id}")
    public String deleteProduct(@PathVariable int id) {
        products.removeIf(p -> p.getId() == id);
        return "Product deleted successfully";
    }
}