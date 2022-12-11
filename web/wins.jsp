<%-- 
    Document   : wins
    Created on : 8 Jun, 2022, 6:35:37 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
FRONT
.B:hover
{
width:200px;
height:50px;
background:linear-gradient(to right,blueviolet,black);
color:white;
border-radius:0px 40px; 
}
WELCOME.JSP
.B:hover
{
width:200px;
height:50px;
background:linear-gradient(to right,blueviolet,black);
color:white;
border-radius:0px 40px; 

WELCOME2.JSP
.B:hover
{
width:200px;
height:50px;
background:linear-gradient(to right,blueviolet,black);
color:white;
border-radius:40px 40px; 
}


<div class="logo">
        <img src="img1.jpg" alt="logo" height="500" width="800" />
    </div>


 /*<p style="font-size: 40px; font-weight: bold; color: greenyellow; margin-top: 60px;margin-left: 5px">CONGRATULATIONS...</p>*/
 
 
<div id="data">
<form action="Welcome2.jsp" method="get">
    <div class="menu">
        <a href="questions.jsp" class="B" style="margin-top: 170px;margin-left: 160px" >Yes</a><br />
        <a href="login.jsp" class="B" style="margin-top: 170px;margin-left: 100px">No</a><br />
    </div>
    <table>
        <tr><input type="Submit" class="B" style="margin-top: 150px;margin-left: 1200px" value="Exit"></tr>
           </table>

          
</form>

</div>
 
 
 <%         
    String s13=request.getParameter("amount");
    try
    {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con3=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false","root","root");
    Statement st3=con.createStatement();
    
    if(s1==amount)
    {
        ResultSet rs3 = st.executeQuery("select * from questions where amount='"+(amount)+"'");
    }
   else{        
        ResultSet rs = st.executeQuery("select * from questions where amount='"+(amount++)+"'");
    }
   
    con.close();
    }
    catch(Exception e)
    {
    out.println(e);
    }
    %>  
    
    <div class="popup" id="popup">
         <h2>Congratulations...</h2>
         <p>You won Rs. <%=amount%></p> 
           <p>Do you want to play furthur?</p>
           <button type="button">Yes</button>
           <button type="button">No</button>
     </div>
           
           
           <!--                <ul class="bars">
               if(ans1==op1)
                {
               <div class="bar" data-percentage="<%=ans%>"></div><span>Option 01</span>
                <div class="bar" data-percentage="<%=op1%>"></div><span>Option 02</span>
                <div class="bar" data-percentage="<%=op2%>"></div><span>Option 03</span>
                <div class="bar" data-percentage="<%=op3%>"></div><span>Option 04</span>
                }
                else if(ans1==op2)
                {
                <div class="bar" data-percentage="<%=op1%>"></div><span>Option 01</span>
                <div class="bar" data-percentage="<%=ans%>"></div><span>Option 02</span>
                <div class="bar" data-percentage="<%=op2%>"></div><span>Option 03</span>
                <div class="bar" data-percentage="<%=op3%>"></div><span>Option 04</span>
                }
                else if(ans1==op3)
                {
                <div class="bar" data-percentage="<%=op1%>"></div><span>Option 01</span>
                <div class="bar" data-percentage="<%=op2%>"></div><span>Option 02</span>
                <div class="bar" data-percentage="<%=ans%>"></div><span>Option 03</span>
                <div class="bar" data-percentage="<%=op3%>"></div><span>Option 04</span>
                }
                else{
               <div class="bar" data-percentage="<%=op1%>"></div><span>Option 01</span>
                <div class="bar" data-percentage="<%=op2%>"></div><span>Option 02</span>
                <div class="bar" data-percentage="<%=op3%>"></div><span>Option 03</span>
                <div class="bar" data-percentage="<%=ans%>"></div><span>Option 04</span>
                }-->
                
                <!--</ul>-->
                
                
                
                <img class="background" alt="" src="ccc3.jpeg">
 <form action="winner.jsp"><input type ="submit" class="lifeline" value = "Quit" style="left: 28px; top: 48px"></form>
          <form><input type="button" class="lifeline" id="b2"  onclick="lifeLine2('50-50')" value="50-50" style="left: 636px; top: 50px"></form>
          <form action="questions.jsp"><input type="submit"  class="lifeline" style="left: 780px; top: 48px" name="flip" value="2x"></form>
          <form><input type="button" class="lifeline"  onclick="lifeLine()" style="left: 502px; top: 48px" value="Expert"></form>
          <form action="audience.jsp"><input type="submit" class="lifeline" style="left: 360px; top: 48px" value="Audience"></form>
          <input type="text" name="amount" class="amount" value="<%="Rs. "+rs.getString(8)%>" >
          <form action="<%=request.getRequestURL()%>" name="forma">
            <input type="text" name="clock" class="timer" value="<%=clock%>" style="border:0px">