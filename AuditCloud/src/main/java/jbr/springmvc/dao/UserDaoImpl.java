package jbr.springmvc.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
/***
 * Data Object Access class implementing methods to interact with DataBase
 * @author Priyaa Thavasimani
 * @date 11 Apr 2019
 */
public class UserDaoImpl implements UserDao {
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public void register(User user) {
		System.out.println(user.getEmail() + " "+ user.getFirstname()+" "+ user.getLastname()+" "+ user.getPhone()+" "+ user.getPassword_hash()+" "+user.getReset_hash()+
				" "+ user.getAddress()+" "+ user.getDesignation());
		String sql = "insert into users (email,firstname,lastname,phone,password_hash,reset_hash,address,designation) values(?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(
				sql,
				new Object[] {user.getEmail(),user.getFirstname(), user.getLastname(),user.getPhone(),
						user.getPassword_hash(),user.getReset_hash(),				 
						 user.getAddress(), user.getDesignation() });
	}

	public User validateUser(Login login) {
		
		
		
		/*String sql = "select * from users where email='"
				+ login.getEmail() + "' and password='"
				+ login.getPassword() + "'";*/
		String sql = "select * from users where email='"+ login.getEmail()+"'";
		
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		System.out.println("db stored reset hash code " + users.get(0).getReset_hash() + " login pass " + login.getPassword() + " reset hsah salt in bytes "+ users.get(0).getReset_hash().getBytes());
		System.out.println("db stored reset hash code " + users.get(0).getReset_hash() + " login pass " + login.getPassword() + " reset hsah salt in bytes "+ Base64.getDecoder().decode(users.get(0).getReset_hash()));

		
		// get user input login password and salt reset_hash from Database to create the same hashed password
		String encryptedpassword = get_SHA_512_SecurePassword(login.getPassword(), Base64.getDecoder().decode(users.get(0).getReset_hash())); 
		//compare password
		System.out.println("Database stored password"  + users.get(0).getPassword_hash().toString() + " user input password hashed for comparison" + encryptedpassword);
		return encryptedpassword.equals( users.get(0).getPassword_hash().toString())? users.get(0) : null;
		
		//return users.size() > 0 ? users.get(0) : null;
	}
	 public static String get_SHA_512_SecurePassword(String passwordToHash, byte[] salt)
	    {
	        String generatedPassword = null;
	        try {
	            MessageDigest md = MessageDigest.getInstance("SHA-512");
	            md.update(salt);
	            byte[] bytes = md.digest(passwordToHash.getBytes());
	            StringBuilder sb = new StringBuilder();
	            for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            generatedPassword = sb.toString();
	        }
	        catch (NoSuchAlgorithmException e)
	        {
	            e.printStackTrace();
	        }
	        return generatedPassword;
	    }
}


class UserMapper implements RowMapper<User> {
	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();
		user.setPassword_hash(rs.getString("password_hash"));
		user.setReset_hash(rs.getString("reset_hash"));
		user.setFirstname(rs.getString("firstname"));
		user.setLastname(rs.getString("lastname"));
		user.setEmail(rs.getString("email"));
		user.setAddress(rs.getString("address"));
		user.setPhone(rs.getString("phone"));
		return user;
	}
	//Generate Encrypted Password
   
}
