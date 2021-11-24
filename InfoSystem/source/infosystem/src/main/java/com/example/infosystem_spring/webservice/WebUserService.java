package com.example.infosystem_spring.webservice;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface WebUserService {
    @WebMethod
    String sayHello(@WebParam String from);

    @WebMethod
    String loadUserByUsername(@WebParam String username);

    @WebMethod
    String loadCurOrgByUserName(@WebParam String username);

    @WebMethod
    String setCurOrg();

    @WebMethod
    String loadOrgsByUserName(String username);

    @WebMethod
    String loadRoleByUserName(String username);

    @WebMethod
    String getCurrentUserSkin();
}
