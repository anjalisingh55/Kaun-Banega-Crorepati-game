<html>
<head>
<style type="text/css">
body
{
background-image:url(registerpg.jpg);
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
<script>
    function demo(){
     	window.open("http://localhost:8080/kbcprojrct/login.jsp");

    }
</script>


</head>
<body>
    <p style="font-size: 40px; font-weight: bold; color: whitesmoke; margin-top: 80px;margin-left: 550px">REGISTER NOW!!</p>
<div id="data">
<center>
<form action="register1.jsp" method="get">
<table cellpadding="12px" width="1200px">
<tr>
<td>Full Name</td>
<td><input type="text" name="un" placeholder="Full Name"></td>
<td>Gender</td>
<td><input type="text" name="ug" placeholder="Gender"></td>

</tr>
<tr>
<td>Email</td>
<td><input type="text" name="ue" placeholder="Email"></td>

<td>Address</td>
<td><input type="text" name="ua" placeholder="Address"></td>

</tr>
<tr>
<td>Password</td>
<td><input type="password" name="up" placeholder="Password"></td>
<td>State</td>
<td><input type="text" name="us" placeholder="State"></td>

</tr>
<tr>
<td>Phone Number</td>

<td><input type="text" name="um" placeholder="Phone Number"></td>
<td>City</td>
<td><input type="text" name="uc" placeholder="City"></td>
</tr>
</table>
    <table cellpadding="12px" width="1200px">
<tr>
<th><input type="Submit" class="B" name="b1" value="Register"></th>

<th><input type="button" onclick="demo()" class="B" name="b2" value="Login"></th>

<th><input type="Submit" class="B" name="b3" value="Cancel"></th>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>