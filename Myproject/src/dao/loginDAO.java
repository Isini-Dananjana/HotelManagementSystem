package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javabean.Login;



public class loginDAO  implements ILoginDAO{

	
	public boolean validate(Login login) throws ClassNotFoundException {
        boolean result = false;

        Class.forName("com.mysql.jdbc.Driver");
     // Step 1: Establishing a Connection
        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/studentresult", "root", "isini123");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from login where username = ? and password = ? ")) {
            preparedStatement.setString(1, login.getUsername());
            preparedStatement.setString(2, login.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            result = rs.next();

        } catch (SQLException e) {
           
            printSQLException(e);
        }
        return result;
    }



private void printSQLException(SQLException ex) {
    for (Throwable e: ex) {
        if (e instanceof SQLException) {
            e.printStackTrace(System.err);
            System.err.println("SQLState: " + ((SQLException) e).getSQLState());
            System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
            System.err.println("Message: " + e.getMessage());
            Throwable t = ex.getCause();
            while (t != null) {
                System.out.println("Cause: " + t);
                t = t.getCause();
            }
        }
    }
}
}