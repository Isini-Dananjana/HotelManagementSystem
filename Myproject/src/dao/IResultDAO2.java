package dao;

import java.sql.SQLException;
import java.util.List;

import javabean.Result;

public interface IResultDAO2 {

	
		
		//insert results to the resultsheet2 table
		 void insertResult2(Result result) throws SQLException;
		 
		 
		 //get list from resultsheet2 table
		 List < Result > selectAllResults2();
		 
		 
		 //select a row by id from resultsheet2 table
		 Result selectResult2(int id);
		 
		 //update the results in resultsheet2 table
		  boolean updateResult2(Result result) throws SQLException;
		 
		 //delete the results in resultsheet1 table
		  boolean deleteResult2(int id) throws SQLException;

		 //display the total and average of the a row 
		  List < Result > selectTotal2(String student_roll) ;
	
}
