package Connection;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class ConnectionClass {
		
		 static final String jdbc_Driver = "com.mysql.jdbc.Driver";  //stored  the value in a variables . the driver connection
		    static final String db_Url = "jdbc:mysql://localhost:3306/crud";    // database location , 3306 is the port number

		    static final String dbUser_name = "root";    // mysql username
		    static final String dbPassword = "Goku@0324";   //mysql password

		    public static Connection getConnectionMysql() {   //created a method
		        Connection connection = null;
		        try {
		            Class.forName(jdbc_Driver);    // forName() method, to dynamically load the driver's class file into memory, which automatically registers it
		            System.out.println("Connecting to Database ...");
		            connection = DriverManager.getConnection(db_Url, dbUser_name, dbPassword);     //The DriverManager provides a basic service for managing a set of JDBC drivers
		        } catch (ClassNotFoundException | SQLException e) {
		            System.out.println(e);
		        }
		        return connection;   // returning the connection
		    }

}
