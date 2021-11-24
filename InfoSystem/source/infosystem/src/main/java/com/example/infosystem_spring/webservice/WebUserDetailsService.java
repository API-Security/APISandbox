package com.example.infosystem_spring.webservice;


import com.example.infosystem_spring.dao.UserDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WebUserDetailsService implements WebUserService {

    @Autowired
    private UserDaoImpl userDao;

    @Override
    public String sayHello(String from) {
        return "hello";
    }

    @Override
    public String loadUserByUsername(String username) {
        return userDao.getPwdHash(username);
    }

    @Override
    public String loadCurOrgByUserName(String username) {
        return "loadCurOrgByUserName";
    }

    @Override
    public String setCurOrg() {
        return "setCurOrg";
    }

    @Override
    public String loadOrgsByUserName(String username) {
        return "loadOrgsByUserName";
    }

    @Override
    public String loadRoleByUserName(String username) {
        return "loadRoleByUserName";
    }

    @Override
    public String getCurrentUserSkin() {
        return "getCurrentUserSkin";
    }

}
