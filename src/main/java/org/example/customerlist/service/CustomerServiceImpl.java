package org.example.customerlist.service;

import org.example.customerlist.model.Customers;

import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService{
    @Override

    public List<Customers> findAll(){
        List<Customers> customers = new ArrayList<Customers>();
        customers.add(new Customers(1, "Doan Hai Nam", "hainam141199@gmail.com",  "Hung Yen"));
        customers.add(new Customers(1, "Nguyen Van A", "hainam14@gmail.com",  "ha Noi"));
        customers.add(new Customers(1, "Nguyen Van B", "hainam141@gmail.com",  "Hai Phong"));
        customers.add(new Customers(1, "Tran Thi C", "hainam1411@gmail.com",  "Ha  Nam"));
        customers.add(new Customers(1, "Codegym", "hainam1199@gmail.com",  "Nam Dinh"));
        return customers;
    }

    @Override
    public Customers finById(int id) {
        List<Customers> customers = findAll();
        for (Customers customer : customers) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }
}



