<%@page import="java.sql.*"%>
<html>
<head>
<style type="text/css">
body
{
background-image:url(cheque.jpg);
background-repeat:no-repeat;
height:100%;
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
#heighttext{
        position: absolute;
        left: 610px;
        top: 350px;
        height:65px;
        width: 300px;
        text-align: center;
        /*background: transparent;*/
        background: white;
        border: none;
        /*border-radius:40px 40px;*/
        color: black;
        font-size: 30px;
}
#heighttext1{
        position: absolute;
        left: 610px;
        top: 460px;
        height:65px;
        width: 300px;
        text-align: center;
       /* background: transparent;*/
        border: none;
        /*border-radius:40px 40px;*/
        color: black;
        font-size: 30px;
}
</style>
<title>Login Page</title>
</head>
<body>
<center>
    <div id="data">
        <%
    String s2="";
    
   
        Cookie c[] = request.getCookies();
        for(Cookie i:c)
        {
        String s1 =i.getName();
         if(s1.equals("uname"))
         {
         s2 = i.getValue();
         }
        }
%>
                    
<input type="text" id="heighttext" name="wt" value=<%=s2%>>

  
       <%
       Cookie c1[] = request.getCookies();
//        String y2=rs.getString(8);
       int y2=0;
        for(Cookie i:c1)
        {
         String s3 =i.getName();
         if(s3.equals("amount"))
         {
         y2 = Integer.parseInt(i.getValue());
//         int z = y1;
//         if(z!=3)
//         i.setValue(y2);
//         else
//         i.setValue("1");
//         response.addCookie(i);
         }
        }%>
        <input type='text' name='wt' id="heighttext1" value=<%=y2%>  ;>
    </div>
</center>
</body>
</html>
  