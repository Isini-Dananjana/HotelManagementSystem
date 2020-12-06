package dao;

import java.sql.SQLException;
import java.util.List;

import javabean.Result;

public interface IResultDAO3 {


			
			
			//insert results to the resultsheet3 table
			  void insertResult3(Result result) throws SQLException;
			 
			 
			 //get list from resultsheet3 table
			 List < Result > selectAllResults3();
			 
			 
			 //select a row by id from resultsheet3 table
			 Result selectResult3(int id);
			 
			 //update the results in resultsheet3 table
			  boolean updateResult3(Result result) throws SQLException;
			 
			 //delete the results in resultsheet3 table
			 boolean deleteResult3(int id) throws SQLException;

			 //display the total and average of the a row 
			  List < Result > selectTotal3(String student_roll) ;
	
}
