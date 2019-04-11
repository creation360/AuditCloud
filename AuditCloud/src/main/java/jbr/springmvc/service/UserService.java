package jbr.springmvc.service;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
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