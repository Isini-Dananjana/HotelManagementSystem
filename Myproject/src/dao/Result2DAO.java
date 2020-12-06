package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.oop.DBconnectionUtil;
import javabean.Result;



public class Result2DAO implements IResultDAO2 {
	
	
	DBconnectionUtil  con = new DBconnectionUtil();
	
    
    private static final String INSERT_RESULT_SQL = "INSERT INTO studentresult.resultsheet2" + "  (student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10) VALUES " +
            " (?,?,?,?,?,?,?,?,?,?,?,?);";
 
    private static final String SELECT_USER_BY_ID = "select id,student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10 from resultsheet2 where id = ?;";
    
    private static final String UPDATE_RESULT_SQL = "update resultsheet2 set student_class = ? ,student_roll = ?,mark1= ?,mark2= ?,mark3= ?,mark4= ?,mark5= ?,mark6= ?,mark7= ?,mark8= ?,mark9= ?,mark10= ? where id = ?;";
    
    
    private static final String SELECT_ALL_RESULTS = "select * from resultsheet2;";
    
    private static final String DELETE_RESULT_SQL = "delete from resultsheet2 where id = ?;";
    
    private static final String SELECT_USER_BY_I  = "select id,student_class,student_roll,mark1,mark2,mark3,mark4,mark5,mark6,mark7,mark8,mark9,mark10 from resultsheet2 where student_roll = ?;";
    
    
   

    
    
    
    
    
    
    public void insertResult2(Result result) throws SQLException {
        System.out.println(INSERT_RESULT_SQL);
        // try-with-resource statement will auto close the connection.
        try (Connection connection = con.getConnection(); 
        		
        	PreparedStatement preparedStatement = connection.prepareStatement(INSERT_RESULT_SQL)) {
        	
        	preparedStatement.setString(1, result.getStudent_class());
        	 preparedStatement.setString(2, result.getStudent_roll());
        	 preparedStatement.setString(3, result.getMark1());
        	 preparedStatement.setString(4, result.getMark2());
        	 preparedStatement.setString(5, result.getMark3());
        	 preparedStatement.setString(6, result.getMark4());
        	 preparedStatement.setString(7, result.getMark5());
        	 preparedStatement.setString(8, result.getMark6());
        	 preparedStatement.setString(9, result.getMark7());
        	 preparedStatement.setString(10, result.getMark8());
        	 preparedStatement.setString(11, result.getMark9());
        	 preparedStatement.setString(12, result.getMark10());
        	 
           
           
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
            
        } catch (SQLException e) {
        	printSQLException(e);
        }
    }
    
    
    
    public List < Result > selectAllResults2() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < Result > result = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try (Connection connection = con.getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_RESULTS)) {
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	int id = rs.getInt("id");
            	String student_class= rs.getString("student_class");
            	String student_roll= rs.getString("student_roll");
				 String mark1= rs.getString("mark1");
				 String mark2= rs.getString("mark2");
				 String mark3= rs.getString("mark3");
				 String mark4= rs.getString("mark4");
				 String mark5= rs.getString("mark5");
				 String mark6= rs.getString("mark6");
				 String mark7= rs.getString("mark7");
				 String mark8= rs.getString("mark8");
				 String mark9= rs.getString("mark9");
				 String mark10= rs.getString("mark10");
				 
				 result.add(new Result(id, student_class,student_roll,mark1, mark2, mark3, mark4, mark5, mark6, mark7, mark8, mark9, mark10));
            }
        } catch (SQLException e) {
        	
        	printSQLException(e);
        }
        return result;
    }
    
    
    
    public Result selectResult2(int id) {
    	Result result = null;
        // Step 1: Establishing a Connection
        try (Connection connection = con.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	String student_roll= rs.getString("student_roll");
            	String student_class= rs.getString("student_class");
            	String mark1= rs.getString("mark1");
				 String mark2= rs.getString("mark2");
				 String mark3= rs.getString("mark3");
				 String mark4= rs.getString("mark4");
				 String mark5= rs.getString("mark5");
				 String mark6= rs.getString("mark6");
				 String mark7= rs.getString("mark7");
				 String mark8= rs.getString("mark8");
				 String mark9= rs.getString("mark9");
				 String mark10= rs.getString("mark10");
				 result = new Result(id,student_class,student_roll,mark1, mark2, mark3, mark4, mark5, mark6, mark7, mark8, mark9, mark10);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return result;
    }
    
    
    
    public boolean updateResult2(Result result) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = con.getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_RESULT_SQL);) {
            statement.setString(1, result.getStudent_class());
            statement.setString(2, result.getStudent_roll());
            statement.setString(3, result.getMark1());
            statement.setString(4, result.getMark2());
            statement.setString(5, result.getMark3());
            statement.setString(6, result.getMark4());
            statement.setString(7, result.getMark5());
            statement.setString(8, result.getMark6());
            statement.setString(9, result.getMark7());
            statement.setString(10, result.getMark8());
            statement.setString(11, result.getMark9());
            statement.setString(12, result.getMark10());
            statement.setInt(13, result.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    
    public boolean deleteResult2(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = con.getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_RESULT_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    
    
    public List < Result > selectTotal2(String student_roll) {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List < Result > result = new ArrayList < > ();
        try (Connection connection = con.getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_I);) {
           
            System.out.println(preparedStatement);
            
            preparedStatement.setString(1, student_roll);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	int id = rs.getInt("id");
            	String student_roll1= rs.getString("student_roll");
            	String student_class= rs.getString("student_class");
            	String mark1= rs.getString("mark1");
				 String mark2= rs.getString("mark2");
				 String mark3= rs.getString("mark3");
				 String mark4= rs.getString("mark4");
				 String mark5= rs.getString("mark5");
				 String mark6= rs.getString("mark6");
				 String mark7= rs.getString("mark7");
				 String mark8= rs.getString("mark8");
				 String mark9= rs.getString("mark9");
				 String mark10= rs.getString("mark10");
				 double total = Double.parseDouble(mark1)+Double.parseDouble(mark2)+Double.parseDouble(mark3)+Double.parseDouble(mark2)+Double.parseDouble(mark3)+Double.parseDouble(mark4)+Double.parseDouble(mark5)+Double.parseDouble(mark6)+Double.parseDouble(mark7)+Double.parseDouble(mark8)+Double.parseDouble(mark9)+Double.parseDouble(mark10);
				 double average = (total/10.0);
				 
				 result.add(new Result(id,student_roll1,student_class,mark1, mark2, mark3, mark4, mark5, mark6, mark7, mark8, mark9, mark10,total,average));
            }
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