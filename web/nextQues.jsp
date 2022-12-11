<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
.btn
{
    padding: 10px 60px;
    background: #fff;
    border: 0;
    outline: none;
    cursor: pointer;
    font-size: 22px;
    font-weight: 500;
    border-radius: 30px;
}
.popup
{
    width: 400px;
    background: #fff;
    border-radius: 6px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align: center;
    padding: 0 30px 30px;
    color: #333;
}
.popup h2
{
    font-size: 38px;
    font-weight: 500;
    margin: 30px 0 10px;
}
.popup button
{
    width: 100%;
    margin-top: 50px;
    padding: 10px 0;
    background: #6fd649;
    color: #fff;
    border: 0;
    outline: none;
    font-size: 18px;
    border-radius: 4px;
    cursor: pointer;
    box-shadow: 0 5px 5px rgba(0,0,0,0.2);
}
</style>
<body>
<%!   String s="";
    String data="";
%>
<%
    String s1=request.getParameter("t1");
    String s2=request.getParameter("amount");
    try
    {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false","root","root");
    Statement st=con.createStatement();
  s = ("select * from questions where ans =('"+s1+"') ");
    
    ResultSet rs = st.executeQuery(s);
    
    if(rs.next())
    {   
        Cookie c[] = request.getCookies();
       int y1=0;
        for(Cookie i:c)
        {
         String s3 =i.getName();
         if(s3.equals("q"))
         {
         y1 = Integer.parseInt(i.getValue());
         int z = y1++;
         if(z!=15)
         i.setValue(""+(++z));
         else
         {
         i.setValue("1");
         response.sendRedirect("winner.jsp");
         }
         response.addCookie(i);
         }
        }
        
         Cookie c1[] = request.getCookies();
        String y2=rs.getString(8);
        for(Cookie i:c1)
        {
         String s3 =i.getName();
         if(s3.equals("amount"))
         {
//        int  y3 = Integer.parseInt(i.getValue());
//        int z=Integer.parseInt(y2);
////         if(z!=3)
         i.setValue(""+(y2));
////         else
////         i.setValue("1");
         response.addCookie(i);
         }
        }
       
        response.sendRedirect("questions.jsp");
        
    }
    
    else
    {        
        response.sendRedirect("winner.jsp");
        
  
    }
    con.close();
    }
    
    catch(Exception e)
    {
    out.println(e);
    }
  
%>
</body>
</html>

   