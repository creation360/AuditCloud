package jbr.springmvc.dao;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
/***
 * Data Object Access interface defining methods to interact with DataBase
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 *
 */
public interface UserDao {
	void register(User user);

	User validateUser(Login login);
}