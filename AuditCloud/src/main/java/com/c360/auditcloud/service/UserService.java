package com.c360.auditcloud.service;

import com.c360.auditcloud.model.Login;
import com.c360.auditcloud.model.User;
/***
 * User Service Interface to define methods/service
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 *
 */
public interface UserService {

  void register(User user);

  User validateUser(Login login);
}