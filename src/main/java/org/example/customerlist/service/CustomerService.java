package org.example.customerlist.service;

import org.example.customerlist.model.Customers;

import java.util.List;

public interface CustomerService {
    List<Customers> findAll();

    Customers finById(int id);
}
