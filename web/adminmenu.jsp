<html>
<head>
<style type="text/css">
body
{
background-image:url(back.png);
background-repeat:no-repeat;
height:100%;
background-size:cover;
background-position:center;
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
/*padding:5px;*/
}
table
{
background:rgba(0,0,0,0.5);
color:white;
}
.B 
{
width:250px;
height:70px;
background:linear-gradient(#000066,#6666ff);
text-decoration: none;
color:white;
border-radius:40px 40px;
padding: 20px;
}
</style>
</head>
<body>
    <center>
    <p style="font-size: 40px; font-weight: bold; margin-top: 30px; color: yellow">WELCOME ADMIN!!!</p>
    <div id="menu">
<form action="Preregis.jsp" method="get">
    <input type="submit" value="ADD QUESTION" class="B" style="margin-top: 200px; margin-left: 1200px" ></form>
        <form action="admin.jsp" method="get">
    <input type="submit" value="SHOWALL QUESTIONS" class="B" style="margin-top: 80px; margin-left: 1200px" ></form>
    <form action="admin.jsp" method="get">
    <input type="submit" value="DELETE QUESTION" class="B" style="margin-top: 80px; margin-left: 1200px" ></form>
    <form action="admin.jsp" method="get">
        <input type="submit" value="REGISTERED USERS" class="B" style="margin-top: 80px; margin-left: 1200px"></form>
    <form action="admin.jsp" method="get">
        <input type="submit" value="LOGOUT" class="B" style="margin-top: 80px; margin-left: 1200px"></form>
    </div>
    </center>
</body>
</html>