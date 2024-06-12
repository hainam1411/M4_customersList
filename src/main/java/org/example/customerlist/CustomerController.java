package org.example.customerlist;

import org.example.customerlist.service.CustomerService;
import org.example.customerlist.service.CustomerServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.AttributedString;

@Controller
public class CustomerController {
    private CustomerService customerService;

    public CustomerController( ) {
        customerService =  new CustomerServiceImpl();
    }
    @GetMapping("/customers")
        public String showList(Model model) {
            model.addAttribute("customers", customerService.findAll());
            return "customers/List";
        }
    @GetMapping("/Edit")
    public String edit(@RequestParam int id, Model model) {
        model.addAttribute("customer", customerService.finById(id));
        return "customers/Edit";
    }

    }

