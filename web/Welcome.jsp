<html>
<head>
<style type="text/css">
body
{
background-image:url(img1.jpg);
background-repeat:no-repeat;
height:600px;
background-size:cover;
background-position:center;
background-color:purple;
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
border-radius: 40px 40px;
text-decoration: none;
padding: 20px;
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
    <p style="font-size: 40px; font-weight: bold; margin-top: 30px; color: yellow">WELCOME TO KAUN BANEGA CROREPATI!!!</p>
<div id="data">
<form action="Welcome.jsp" method="get">
    <div class="menu">
        <a href="postfsf.jsp" class="B" style="margin-top: 520px; margin-left: 5px" >Play Game</a><br />
        <a class="B" style="margin-top: 520px; margin-left: 10px">Scores</a><br />
        <a href="about.jsp" class="B" style="margin-top: 520px; margin-left: 15px">About</a><br />
        <a href="Preregis.jsp" class="B" style="margin-top: 520px; margin-left: 20px">Exit</a>
    </div>
</center>
</form>
</body>
</html>