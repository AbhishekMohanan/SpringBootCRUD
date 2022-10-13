<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="LogicClass.LogicClass" %> 
<%@page import="Connection.ConnectionClass" %> 
<%@page import="BeanClass.BeanClass" %> 



 
<% 
    if(request.getParameter("submit")!=null)
    {   String studentId = request.getParameter("studentid");
        String studentname = request.getParameter("studentname");
        String course = request.getParameter("course");
        String fees = request.getParameter("fee"); 
        BeanClass beanClass = new BeanClass();
        LogicClass logicClass = new LogicClass();
        beanClass.setStudentId(studentId);
        beanClass.setStudentname(studentname);
     
        int result = logicClass.registerRecords(beanClass);
        
                 
    }
   %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style>
        body{
            padding: 100px;
        }
        
        table{
          
          padding-top:10px;
        }
        
        #head{
        text-align:center;
        }
        
        
        </style>
    </head>
    <body >
        <h2>STUDENT REGISTRATION</h2>
        </br>
        <div class="row">
            <div class="col-sm-4">
                <form  method="POST" action="#" > 
                
                   <div alight="left">
                        <label class="form-label">Student ID</label>
                        <input type="text" class="form-control" placeholder="Student ID" name="studentid" id="studentid" required >
                     </div>
                    
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" name="studentname" id="studentname" required >
                     </div>
                         
                    <div alight="left">
                        <label class="form-label">Course</label>
                        <input type="text" class="form-control" placeholder="Course" name="course" id="course" required >
                     </div>
                         
                     <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required >
                     </div>
                         </br>
                         
                     <div alight="bottom">
                         <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                         <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                     </div>  
                         
                </form>
            </div>
          
          
             <div class="col-sm-8">
                 
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="80%">
                     <h2 id="head"> STUDENT DETAILS</h2>
                        
                             <tr>  
                                    <th>Student ID</th>
                                    <th>Student Name</th>
                                    <th>Course</th>
                                    <th>Fee</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                             </tr>  
                             
                             <%
                             
                             LogicClass logicClass = new LogicClass();
                             BeanClass beanClass = new BeanClass();
                             ResultSet resultset = logicClass.viewRecords();
                             while(resultset.next()){
                            	  %> 
                            	  
                            	
                             <tr>
                                 <td><%=resultset.getString(1) %></td>
                                 <td><%=resultset.getString(2) %></td>
                                 <td><%=resultset.getString(3) %></td>
                                 <td><%=resultset.getString(4) %></td>
                                 
                                 <td><a href="?page=Link&nextpage=Update&studentid=<%=resultset.getString(1)%>">Edit</a></td>
                                 <td><a href="?page=Link&nextpage=deletepage&delete=<%=resultset.getString(1)%>">Delete</a></td>
                             </tr> 
                                
                                
                            <%  
                             }
                             %>
                              </table> 
                             </div>
                             <br>
                             <br>
                             
                              <%  
                             if(request.getParameter("page")!=null){
                            	 String data = request.getParameter("page");
                            	 if(data.equals("Link")){
                            		 String redirect = request.getParameter("nextpage")+".jsp";
                            		 %>
                            		 <jsp:include page="<%=redirect%>"></jsp:include>
                            		  <%   
                            		  
                            	 }else if(data.equals("update")){

       	                          String name = request.getParameter("studentname");
       	                          String course = request.getParameter("course");
       	                          String fee = request.getParameter("fee");
       	                          String id = request.getParameter("studentid");
       	                       if(new LogicClass().updateRecords(id, name, course, fee)){
       							%>
       								<script>window.location.replace("?")</script>
       							<%
       						}else{
       							out.println("Update Fail! . . . ");
       						}
       	                        	  
       	     
                            	 }
                             }
                        
                             %>	
                             
               

    </body>
</html>