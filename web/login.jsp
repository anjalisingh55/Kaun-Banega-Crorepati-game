<html>
<head>
<style type="text/css">
body
{
background-image:url(login.jpg);
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
background:rgba(0,0,0,0.7);
margin-top:100px;
margin-left: 450px;
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
<div id="data">
<center>
<form action="login.jsp">
<table cellpadding="20px">
<tr>
<td>Enter Username</td>
<td><input type="text" name="un" placeholder="Enter Username"></td>
</tr>
<tr>
<td>Enter Password</td>
<td><input type="password" name="up" placeholder="Enter Password"></td>
</tr>
<tr>
<th colspan="2"><input type="Submit" class="B" value="Login"></th>
</tr>
</table>
</form>
</center>
</div>
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
                    Cookie ck=new Cookie("uname",s1);
                    ck.setMaxAge(60*30);
                    response.addCookie(ck);
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
   
    
</body>
</html>