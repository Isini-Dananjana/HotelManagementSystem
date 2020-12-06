package dao;

import javabean.Login;

public interface ILoginDAO {

	/*validate login */
	 boolean validate(Login login) throws ClassNotFoundException;
	
}
