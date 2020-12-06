package dao;



import java.sql.SQLException;
import java.util.List;

import javabean.Result;

public interface IResultDAO {
	

	
	//insert results to the resultsheet1 table
	  void insertResult(Result result) throws SQLException;
	 
	 
	 //get list from resultsheet1 table
	  List < Result > selectAllResults();
	 
	 
	 //select a row by id from resultsheet1 table
	  Result selectResult1(int id);
	 
	 //update the results in resultsheet1 table
	  boolean updateResult(Result result) throws SQLException;
	 
	 //delete the results in resultsheet1 table
	 boolean deleteResult1(int id) throws SQLException;

	 //display the total and average of the a row 
	  List < Result > selectTotal1(String student_roll) ;
}
