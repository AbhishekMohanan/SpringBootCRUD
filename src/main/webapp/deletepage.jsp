<%@page import="java.sql.*" %> 
<%@page import="LogicClass.LogicClass" %> 
<%@page import="Connection.ConnectionClass" %> 
<%@page import="BeanClass.BeanClass" %> 

<% 
        String studentid = request.getParameter("delete");
        BeanClass beanClass = new BeanClass();
        LogicClass  logicClass = new LogicClass();
        
        beanClass.setStudentId(studentid);
        ResultSet resultset = logicClass.viewCurentData(beanClass);
        int result = logicClass.deleteRecords(beanClass);
        
        
        %>

        
  