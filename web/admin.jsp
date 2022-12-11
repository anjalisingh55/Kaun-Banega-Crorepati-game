<html>
<head>
<style type="text/css">
body
{
background-image:url(admin.jpg);
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
padding: 12px;
}
table
{
background:rgba(0,0,0,0.8);
margin-top: 230px;
margin-left: 50px;
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
<form action="admin1.jsp">
<table cellpadding="20px">
<tr>
<td>Enter Username</td>
<td><input type="text" name="ue" placeholder="Enter Username"></td>
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
</body>
</html>