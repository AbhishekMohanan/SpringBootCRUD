<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="LogicClass.LogicClass" %> 
<%@page import="Connection.ConnectionClass" %> 
<%@page import="BeanClass.BeanClass" %> 
<%@page import="java.sql.ResultSet"%>



 
<% 

     BeanClass beanClass = new BeanClass();
     LogicClass  logicClass = new LogicClass();
 
    
     if(request.getParameter("studentid")!=null){
    	 String studentid = request.getParameter("studentid");
    	 ResultSet resultset = logicClass.viewupdate(studentid);
     		
    	 while(resultset.next())
    	 {
   %>               <br>
    		                 <br>     
    		     <h2>STUDENT REGISTRATION UPDATION</h2>
    		         
    		        
    		                 <form  method="POST" action="?" style =  align :left; > 
    		                 <br>
    		                 <br>
    		                    
    		                   
    		                         <input type="hidden" value = "<%=resultset.getString(1)%>" class="form-control" placeholder="Student ID" name="studentid" id="studentid" required   >
    		                      
    		                     
    		                    
    		                         <label class="form-label">Student Name</label>
    		                         <input type="text"value = "<%=resultset.getString(2)%>" class="form-control" placeholder="Student Name" name="studentname" id="studentname" required >
    		                      
    		                          
    		                     
    		                         <label class="form-label">Course</label>
    		                         <input type="text" value = "<%=resultset.getString(3)%>" class="form-control" placeholder="Course" name="course" id="course" required >
    		                     
    		                          
    		                      
    		                         <label class="form-label">Fee</label>
    		                         <input type="text" value = "<%=resultset.getString(4)%>" class="form-control" placeholder="Fee" name="fee" id="fee" required >
    		                      
    		                          </br>
    		                          
    		                      <div alight="right">
    		                          <input type="submit" id="submit" value="update" name="page" class="btn btn-info">
    		                          <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
    		                      </div>  
    		             	<%
		                  }
		               }
     
                      %>
	  
    		                 </form>
    		           
    		           
    		           
    		



