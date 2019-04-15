package com.c360.auditcloud.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.c360.auditcloud.dao.UserDao;
import com.c360.auditcloud.model.Login;
import com.c360.auditcloud.model.User;

/***
 * User Service Implementation to implement service's functionalities.
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 *
 */
public class UserServiceImpl implements UserService {

  @Autowired
  public UserDao userDao;

  public void register(User user) {
    userDao.register(user);
  }

  public User validateUser(Login login) {
    return userDao.validateUser(login);
  }

}