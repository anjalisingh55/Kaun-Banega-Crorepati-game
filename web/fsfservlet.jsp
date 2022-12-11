<%@page import = "java.sql.*"%>
<%
    
                    String s=request.getParameter("t1");
                    String s1=request.getParameter("t2");
                    String s2=request.getParameter("t3");
                    String s3=request.getParameter("t4");
                    String s4=request.getParameter("t5");
                 try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false&allowPublicKeyRetrieval=true","root","root");
			Statement st=con.createStatement();
			String q="select a1,a2,a3 and a4 from table fsf where ques='+s+'" ;
                        ResultSet rs=st.executeQuery(q);
                        if(s1.equals(rs.getString(1)) && s2.equals(rs.getString(2)) && s3.equals(rs.getString(3)) && s4.equals(rs.getString(4)) )
                        {
                           response.sendRedirect("abhi.jsp");
                        }
                        else
                        response.sendRedirect("abhi11.jsp");
                            
                        
                        
			con.close();
		}
		catch(Exception e1)
		{
			out.println(e1);
		}
                %>