<!DOCTYPE HTML>
<html>
<head>
<style type="text/css">
body
{
background-image:url(back.png);
background-repeat:no-repeat;
background-size:cover;
}
#mymenu
{
background:rgba(0,0,0,0.7);
color:white;
text-align:right;
}
#mymenu ul li
{
display:inline-block;
padding:12px;
}
table
{
background:rgba(0,0,0,0.5);
margin-top:150px;
color:white;
}
.B 
{
width:100px;
height:30px;
background:linear-gradient(black,blue);
color:white;
}
.B:hover
{
width:100px;
height:30px;
background:linear-gradient(to right,black,blue);
color:white;
border-radius:0px 40px; 
}
</style>
</head>
<body>
 <%@include file="adminmenu.jsp" %>
<div id="data">
<center>
<form action="insert1.jsp" method="get">
<table cellpadding="15px">
<tr>
<td>Enter Roll no</td>
<td><input type="text" name="u1" placeholder="Enter Roll no"></td>
</tr>
<tr>
<td>Enter Name</td>
<td><input type="text" name="u2" placeholder="Enter Name"></td>
</tr>
<tr>
<td>Enter Phy</td>
<td><input type="text" name="u3" placeholder="Enter Phy"></td>
</tr>
<tr>
<td>Enter Chem</td>
<td><input type="text" name="u4" placeholder="Enter Chem"></td>
</tr>
<tr>
<td>Enter Maths</td>
<td><input type="text" name="u5" placeholder="Enter Maths"></td>
</tr>
<tr>
<th colspan="2"><input type="Submit" class="B" value="Insert"></th>
</tr>
</table>
</form>
</center>
</div>
<%@page import="java.sql.*"%>
<%
    String s1=request.getParameter("u1");
    String s2=request.getParameter("u2");
    String s3=request.getParameter("u3");
    String s4=request.getParameter("u4");
    String s5=request.getParameter("u5");
    try
    {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ajava56?useSSL=false&allowPublicKeyRetrieval=true","root","root");
			Statement st=con.createStatement();
			st.executeUpdate("insert into ins1 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
			con.close();
			response.sendRedirect("ShowAll.jsp");
    }
    catch(Exception e1)
    {
	out.println(e1);
    }
%>
</body>
</html>
