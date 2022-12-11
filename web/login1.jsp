<%@page import="java.sql.*"%>
<%
    String s1=request.getParameter("un");
    String s2=request.getParameter("up");
    
    try
    {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/KBC?useSSL=false&allowPublicKeyRetrieval=true","root","root");
		Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select * from login where un= '"+s1+"' AND up= '"+s2+"' ");
                if(rs.next())
                {    
                    response.sendRedirect("Welcome.jsp");
                }
                else
                { 
                    System.out.print("Incorrect username or password");
                }
		con.close();
    }
    catch(Exception e1)
    {
	out.println(e1);
    }
%>