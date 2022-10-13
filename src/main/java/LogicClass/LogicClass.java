package LogicClass;

import java.sql.*;

import BeanClass.BeanClass;
import Connection.ConnectionClass;
public class LogicClass {
	
		   PreparedStatement preparestatement;
		    Connection connection;
		    ResultSet resultset;
		    int result;
		    public LogicClass() {
		        connection = ConnectionClass.getConnectionMysql(); // connection is called inside the constructor
		    }

		    public int registerRecords(BeanClass beanClass) {// created a method and passed the bean class and object as parameters
		        try {
		            preparestatement = connection.prepareStatement("insert into fees values (?,?,?,?)"); // called the prepared statement and written the query and inilized the parameters
		            preparestatement.setInt(1, beanClass.getStudentId());
		            preparestatement.setString(2, beanClass.getStudentname());
		            preparestatement.setString(3, beanClass.getCourse());
		            preparestatement.setString(4, beanClass.getFees());
		           

		            result = preparestatement.executeUpdate(); // executing query
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return result; // returning result
		    }
		    
		    
		    public int deleteRecords(BeanClass signupuser) {
		        try {
		            preparestatement = connection.prepareStatement("delete from fees where studentId = ?");
		            preparestatement.setString(1, signupuser.getStudentId());

		            result = preparestatement.executeUpdate();
		           

		            
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        
		        return result;
		    }
		    
		      

		    
		    public ResultSet viewRecords() {
		        try {
		            preparestatement = connection.prepareStatement("select * from fees");
		            resultset = preparestatement.executeQuery();
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return resultset;
		    }
		    
		    
		    
		    public ResultSet viewCurentData(BeanClass beanClass) {
		        try {
		            preparestatement = connection.prepareStatement("select * from fees where studentId = ?");
		            preparestatement.setString(1, beanClass.getStudentId());
		            resultset = preparestatement.executeQuery();
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return resultset;
		    }

		    
		    public boolean updateRecords(String id , String name, String course, String fee ) {
		    	boolean result = false;
		        try {
		           
		            preparestatement = connection.prepareStatement("update fees set studentname = ?,course = ?, fee = ?  where studentId = ?" );
		            preparestatement.setString(4, id);
		            preparestatement.setString(3, fee);
		            preparestatement.setString(1, name);
		            preparestatement.setString(2, course);
		            
		           int update=preparestatement.executeUpdate();
		           if(update>0) {
		        	   return true;
		           }
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return result;
		    } 
		    
		    
		    public ResultSet viewupdate(String studentid) {
		        try {
		            preparestatement = connection.prepareStatement("select * from fees where studentId = ?");
		            preparestatement.setString(1, studentid);
		            
		            resultset = preparestatement.executeQuery();
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return resultset;
		    }
		    
		    
		    
		    public int updateRecords1(BeanClass beanClass ) {
		        try {
		           
		            preparestatement = connection.prepareStatement("update fees set studentname = ?,course = ?, fee = ?  where studentId = ?" );
		            preparestatement.setString(4, beanClass.getStudentId());
		            preparestatement.setString(3, beanClass.getFees());
		            preparestatement.setString(1, beanClass.getStudentname());
		            preparestatement.setString(2, beanClass.getCourse());
		            
		            result = preparestatement.executeUpdate();
		        } catch (SQLException e) {
		            System.out.println(e);
		        }
		        return result;
		    } 
		    
	

public int updateRecords2(BeanClass beanClass ) {
    try {
       
        preparestatement = connection.prepareStatement("update fees set studentname = ?,course = ?, fee = ?  where studentId = ?" );
        preparestatement.setString(1, beanClass.getStudentname());
        preparestatement.setString(2, beanClass.getCourse());
        preparestatement.setString(3, beanClass.getFees());
        preparestatement.setString(4, beanClass.getStudentId());
        System.out.println(beanClass.getStudentname());
   
        
        
        result = preparestatement.executeUpdate();
    } catch (SQLException e) {
        System.out.println(e);
    }
    return result;
} 

}


