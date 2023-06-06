<%-- 
    Document   : Validation
    Created on : June 15, 2023, 8:35:52 PM
    Author     : rajas
--%>

<%@ page import ="java.sql.*" %>
<%  String driverName="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/";
String databaseName="reg";
String userName="root";
String pass="";
//Login l = new Login();
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName(driverName);  // MySQL database connection
        Connection conn = DriverManager.getConnection(url+databaseName, userName, pass);    
        PreparedStatement pst = conn.prepareStatement("Select username,Password from customer where username=? and Password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        {    out.println("Valid login credentials");
//           l.test = true;
        }
        else{
           out.println("Invalid login credentials"); 
//           l.test = false;
        }        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }    
%>
