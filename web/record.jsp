<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("key") != null)
    {
        String key = request.getParameter("key");
        String wild = "%" +key+ "%";
        String url = "jdbc:sqlserver://DESKTOP-SVDADP5\\SQLEXPRESS:1433;databaseName=SWP391-Project_1";
        String user = "sa";
        String pass = "sa";
        try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con  = DriverManager.getConnection(url, user, pass);
                PreparedStatement statement = con.prepareStatement("SELECT *FROM Course WHERE [name] LIKE ?");
                statement.setString(1, wild);
                ResultSet rs = statement.executeQuery();
                while (rs.next()) {
                    %>
                    <ol class="list-group-item"><%=rs.getString("name")%></ol>
                   <% }
                   con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        
    }
%>
