<%@page import="javax.servlet.http.Cookie"%>
<html>
<head>
<style type="text/css">
body
{
background-image:url(front1.jsp.jpg);
background-repeat:no-repeat;
height:300px;
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
<script type="text/javascript">
    function closeFullscreen() {
     close();
}
    </script>
</head>
<body>
<div id="data">
    <audio controls loop autoplay hidden>
  <source src="KBC.mp3" type="audio/mpeg">
</audio>
</div>
    <div id="menu">
<form action="Preregis.jsp" method="get">
    <input type="submit" value="PLAY GAME" class="B" style="margin-top: 270px; margin-left: 1200px" ></form>
        <form action="admin.jsp" method="get">
<!--    <input type="submit" value="ADMIN" class="B" style="margin-top: 80px; margin-left: 1200px" ></form>-->
       <input type="submit" value="EXIT" class="B" style="margin-top: 60px; margin-left: 1200px" onclick="closeFullscreen()">
    </div>
    <%
    Cookie ck=new Cookie("q","1");
    ck.setMaxAge(60*30);
    response.addCookie(ck);
    %> 
    
    <%
    Cookie ck1=new Cookie("amount","0");
    ck1.setMaxAge(60*60);
    response.addCookie(ck1);
    %> 
</body>
</html>