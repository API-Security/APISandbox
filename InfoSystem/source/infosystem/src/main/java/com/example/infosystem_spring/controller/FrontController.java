package com.example.infosystem_spring.controller;

import com.example.infosystem_spring.dao.itf.UserDao;
import com.example.infosystem_spring.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class FrontController {

    private final Logger logger = LoggerFactory.getLogger(FrontController.class);

    @Autowired
    UserDao userDao;

    @RequestMapping(value = {"/", "/login"})
    public String index() {
        return "frontLogin";
    }

    @RequestMapping(value = "/home.action", method = RequestMethod.POST)
    @ResponseBody
    public String home(
            @RequestParam(name = "username", defaultValue = "") String username,
            @RequestParam(name = "password", defaultValue = "") String password,
            HttpServletRequest request
    ) {
        logger.info(username + " try to login front");
        User user = userDao.login(username, password);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("loginuser", user);
//            return "redirect:/home.page";
            return "{\"code\": 200, \"login\": true}";
        } else {
//            return "redirect:/login";
            return "{\"code\": 200, \"login\": false}";
        }
    }

    @RequestMapping("/home.page")
    public String page() {
        return "view/news/list_front";
    }

}
