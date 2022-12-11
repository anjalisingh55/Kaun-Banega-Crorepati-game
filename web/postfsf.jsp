<html>
<head>
<style type="text/css">
body
{
background-image:url(furthur.jpg);
/*filter: blur(5px);
-webkit-filter: blur(5px);*/
background-size:cover;
height: 100%;
background-repeat:no-repeat;
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
padding:12px;
}
table
{
background:rgba(0,0,0,0.5);
/*margin-top:150px;*/
color:white;
}
.B 
{
width:200px;
background:linear-gradient(blueviolet,black);
color:white;
border-radius:40px 60px;
text-decoration: none;
padding:20px;
}

.menu {
    display: flex;
    margin-left: 300px;
}

.logo {
    padding: 10px;
}
</style>
</head>
<body>
    <center>
   
    <div id="data">
<form action="Welcome2.jsp" method="get">
    <p style="font-size: 40px; font-weight: bold; color: yellow; margin-top: 120px;margin-left: 5px">Do you want to play the game??</p>
    <div class="menu">
        <a href="questions.jsp" class="B" style="margin-top: 180px;margin-left: 100px" >Yes</a><br />
        <a href="login.jsp" class="B" style="margin-top: 180px;margin-left: 220px">No</a><br />
    </div>
    <table>
        <tr><input type="Submit" class="B" style="margin-top: 150px;margin-left: 1200px" value="Exit"></tr>
    </table>     
</form>

</div>
    </center> 
</body>
</html>
