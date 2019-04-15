package com.c360.auditcloud.dao;

import com.c360.auditcloud.model.Login;
import com.c360.auditcloud.model.User;

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