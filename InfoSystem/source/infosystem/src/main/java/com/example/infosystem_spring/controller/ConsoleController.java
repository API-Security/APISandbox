package com.example.infosystem_spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class ConsoleController {

    @RequestMapping(value = {"/admin/console/main"})
    public String home() throws Exception {
        return "home";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("admin");

        return "redirect:/admin";
    }

    @RequestMapping(value = "leftnav", method = RequestMethod.GET)
    String leftnav() {
        return "leftnav_static";
    }

    @RequestMapping(value = "topnav", method = RequestMethod.GET)
    String topnav() {
        return "topnav";
    }

}
