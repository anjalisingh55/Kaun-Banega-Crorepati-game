<%@page import="java.sql.*"%>
<%
    String s1=request.getParameter("un");
    String s2=request.getParameter("ug");
    String s3=request.getParameter("ue");
    String s4=request.getParameter("ua");
    String s5=request.getParameter("up");
    String s6=request.getParameter("us");
    String s7=request.getParameter("um");
    String s8=request.getParameter("uc");
    String s9=request.getParameter("b2");
    String s10=request.getParameter("b1");
    String s11=request.getParameter("b1");
    try
    {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/KBC?useSSL=false&allowPublicKeyRetrieval=true","root","root");
		Statement st=con.createStatement();
                st.executeUpdate("insert into login values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
                
                if(request.getParameter("b2")!=null)response.sendRedirect("login.jsp");
                else response.sendRedirect("login.jsp");
                
                if(request.getParameter("b3")!=null)response.sendRedirect("Preregis.jsp");
                else response.sendRedirect("Preregis.jsp");
                
                if(request.getParameter("b1")!=null)response.sendRedirect("Preregis.jsp");
                else response.sendRedirect("Preregis.jsp");
		con.close();
    }
    catch(Exception e1)
    {
	out.println(e1);
    }
%>
