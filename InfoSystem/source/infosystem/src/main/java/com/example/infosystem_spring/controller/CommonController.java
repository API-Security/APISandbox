package com.example.infosystem_spring.controller;


import com.example.infosystem_spring.dao.UserDaoImpl;
import com.example.infosystem_spring.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@Controller
public class CommonController {
    private final Logger logger = LoggerFactory.getLogger(CommonController.class);

    @Autowired
    private UserDaoImpl userDao;

    @RequestMapping({"/admin"})
    public String baseplatfom() throws IOException {
        return "/view/login/login";
    }

    @RequestMapping(value = "/admin/externalLogin")
    @ResponseBody
    public String externalLogin(
            HttpServletRequest request,
            HttpServletResponse response,
            @RequestParam(name = "username", defaultValue = "") String username,
            @RequestParam(name = "password", defaultValue = "") String password
    ) throws IOException {
        // parameters check
        if (username.equals("") || password.equals("")) {
            response.getWriter().write("please input username and password");
            response.sendRedirect("/admin");
        }

        User user = userDao.login(username, password);
        logger.info(username + " try to login");
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", user);
//            return "redirect:/admin/console/main";
            return "{\"code\": 200, \"login\": true}";
        } else {
//            return "redirect:/admin";
            return "{\"code\": 200, \"login\": false}";
        }

    }
}
