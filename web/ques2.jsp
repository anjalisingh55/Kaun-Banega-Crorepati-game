<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
      img.background 
      {
      position: absolute;
      left: 0px;
      top: 0px;
      z-index: -1;
      width: 100%;
      height: 100%;
      }
      .anybutton {
       top:93%;
       left:92%;
       width:100px;
       height:40px;
       position: absolute;
       z-index: 3;
       background: white; 
       }
       .heighttext{
        position: absolute;
        left: 180px;
        top: 320px; 
        height:135px;
       background: transparent;
        border: none;
}
         .heighttext1{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 265px;
        top: 550px;
        height:35px;
        background: transparent;
        border: none;
        color: white;
        font-size: 30px;
}
   .heighttext2{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 905px;
        top: 550px;
        height:35px;
        background: transparent;
        border: none;
        color: white;
        font-size: 30px;
}
   .heighttext3{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 265px;
        top: 653px;
        height:35px;
       background: transparent;
        border: none;
        color: white;
        font-size: 30px;
}
  .heighttext4{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 905px;
        top: 643px;
        height:35px;
        background: transparent;
        border: none;
        color: white;
        font-size: 30px;
}

</style>
</head>
<body>
        <% 
        Cookie c[] = request.getCookies();
        int y1=0;
        for(Cookie i:c)
        {
         String s1 =i.getName();
         if(s1.equals("q"))
         {
         y1 = Integer.parseInt(i.getValue());
         int z = y1;
         if(z!=3)
         i.setValue(""+(++z));
         else
         i.setValue("1");
         response.addCookie(i);
         }
        }
        %>
        <form action="nextQuestion.jsp">
        <% 
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false","root","root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from question where S_NO='"+(y1++)+"'");
        if(rs.next())
        {
            String s1 = rs.getString("q_no");
            out.println("<center><h1 class='heighttext' style='color:white';>"+s1+"</center>");
            String s2 = rs.getString("op1");
            out.println("<center><input type='submit' class='heighttext1' name='t1' value='"+s2+"' id=btn1> <h1 style='color:white';></h1></button></center>");
            String s3 = rs.getString("op2");
           
           out.println("<center><input type='submit' class='heighttext2' name='t1' value='"+s3+"' id=btn2> <h1 style='color:white';></h1></button></center>");
            String s4 = rs.getString("op3");
            out.println("<center><input type='submit' class='heighttext3' name='t1' value='"+s4+"' id=btn3> <h1 style='color:white';></h1></button></center>");
            String s5 = rs.getString("op4");
            out.println("<center><input type='submit' class='heighttext4' name='t1' value='"+s5+"' id=btn4> <h1 style='color:white';></h1></button></center>");
        }
        }
        catch(Exception e1)
        {
        out.println(e1);
        }
        %>
        
        </form>
          <img class="background" src="startg.jpg"></img>
          <input type ="submit" class="anybutton" value = "home" >
          <form action="fifty.jsp">
            I<input type="submit" class="heighttext5" name="t1" value="50-50" id="btn"></form>
          <form action="startgame.jsp"><input type="submit" class="heighttext5" value="skip Question"></form>
 </body>
</html>