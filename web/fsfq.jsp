<%@page import = "java.sql.*"%>

<%
                    String s1="";
                    String s2="";
                    String s3="";
                    String s4="";
                    String s5="";
                    String queno="";
                    
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false&allowPublicKeyRetrieval=true","root","root");
			Statement st=con.createStatement();
			//ResultSet rs=st.executeQuery("select * from fsf where queno='' "+Math.round((Math.random()*1)+1)+"';");
                        ResultSet rs=st.executeQuery("select * from fsf order by RAND() Limit 1");
			if(rs.next())
			{
                            s1=rs.getString(1);
                            s2=rs.getString(2);
                            s3=rs.getString(3);
                            s4=rs.getString(4);
                            s5=rs.getString(5);
                            st.executeUpdate("update fsf set queno='AAA' where ques='"+s1+"'");
			}
                        else
                        {
                             st.executeUpdate("update fsf set queno=' ' ");
                             ResultSet rs1=st.executeQuery("select * from fsf where queno=''");
                             rs1.next();
                             s1=rs1.getString(1);
                             s2=rs1.getString(2);
                             s3=rs1.getString(3);
                             s4=rs1.getString(4);
                             s5=rs1.getString(5);
                             st.executeUpdate("update fsf set queno='AAA'where ques='"+s1+"'");
                        }
                        
			con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
   %>
<html>
<head>
<style type="text/css">
body
{
/*background-image:url(fsfq.jpg);*/
background-repeat: no-repeat;
background-size: cover;
background-color: purple;
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
/*background:rgba(0,0,0,0.5);*/
margin-top:50px;
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
.text {
    text-align: center;
    font-size: 40px;
}
</style>
</head>
<body>
<div id="data">

<form action="fsfq.jsp" name="myform">
<table cellpadding="5px">
    <center>
    <tr>
        <td><input type="text" name="t1" value="<%=s1%>" style=" padding:20px ;height:130px; width:1200px; margin-top: 2px; margin-bottom: 30px; margin-left: 150px; border-radius: 45px;" />
            
            <div style="display: flex">
                <div>
                <input type="text" value="<%=s2%>" name="t2" style="padding:10px;height:50px; width:390px; margin-top: 2px; margin-left: 200px; border-radius: 25px;">
                <input type="text" value="<%=s3%>" name="t2" style="padding:10px;height:50px; width:390px; margin-top: 2px; margin-left: 200px; border-radius: 25px;">
            </div>
            <div>
                <input type="text" name="t2" value="<%=s4%>" style="padding:10px;height:50px; width:390px; margin-top: 2px; margin-left: 100px; border-radius: 25px;">
                <input type="text" name="t2" value="<%=s5%>" style="padding:10px;height:50px; width:390px; margin-top: 2px; margin-left: 100px; border-radius: 25px;">
            </div>
            </div>
        </td>
    </tr>
    <tr>
        <td><input type="text" name="t2" style="height:50px; width:600px; margin-top: 100px; margin-left: 400px; border-radius: 25px;"></td>
    </tr>
     <tr>
        <td><input type="text" name="t3" style="height:50px; width:600px; margin-top: 2px; margin-left: 400px; border-radius: 25px;"></td>
    </tr>
     <tr>
        <td><input type="text" name="t4" style="height:50px; width:600px; margin-top: 2px; margin-left: 400px; border-radius: 25px;"></td>
    </tr>
        <td><input type="text" name="t5" style="height:50px; width:600px; margin-top: 2px; margin-left: 400px; border-radius: 25px;"></td>
    </tr>
    </center>
</table>
</form>
</div>
            <form action="postfsf.jsp" >
    <input type="button" name="b1" value="Quit" style="margin-left: 100px;height:30px; width:60px;"/>
    <input type="button" name="b2" value="Submit" style="margin-left: 1200px;height:30px; width:60px;" />
            </form>
</body>
</html>
