<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        Cookie c[] = request.getCookies();
       int y1=0;
        for(Cookie i:c)
        {
         String s1 =i.getName();
         if(s1.equals("q"))
         {
         y1 = Integer.parseInt(i.getValue());
         }
        }
         
%>
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
        left: 250px;
        top: 350px; 
        height:135px;
       background: transparent;
        border: none;
}
         .heighttext1{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 100px;
        top: 480px;
        height:78px;
        width: 640px;
        text-align: center;
        background: transparent;
        border: none;
        border-radius:40px 40px;
        color: white;
        font-size: 30px;
}
   .heighttext2{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 820px;
        top: 480px;
        height:78px;
        width: 640px;
        text-align: center;
        background: transparent;
        border: none;
        border-radius:40px 40px;
        color: white;
        font-size: 30px;
}
   .heighttext3{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 100px;
        top: 620px;
        height:78px;
        width: 640px;
        text-align: center;
       background: transparent;
        border: none;
        border-radius:40px 40px;
        color: white;
        font-size: 30px;
}
  .heighttext4{
 /*       opacity: 0.1;
	filter: alpha(opacity=100);*/
        position: absolute;
        left: 820px;
        top: 620px;
        height:78px;
        width: 640px;
        text-align: center;
        background: transparent;
        border: none;
        border-radius:40px 40px;
        color: white;
        font-size: 30px;
}
.lifeline
{
        position: absolute;
        height:30px;
        background: transparent;
        border: none;
        color: white;
        font-size: 20px;
}
.amount
{
        position: absolute;
        left: 970px;
        top: 20px;
        height:80px;
        background: transparent;
        border: none;
        color: white;
        font-size: 30px;
}
.timer
{
    position: absolute;
    left: 720px;
    top: 160px;
    height:80px;
    width: 100px;
    text-align: center;
    background: transparent;
    border: none;
    color: white;
    font-size: 50px;
}
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
    transform: translate(-50%,-50%) scale(0.1);
    text-align: center;
    padding: 0 30px 30px;
    color: #333;
    visibility: hidden;
    transition: transform 0.4s, top 0.4s;
}
.open-popup
{
    visibility: visible;
    top: 50%;
    transform: translate(-50%,-50%) scale(1);
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
<script type="text/javascript">
<%
String clock = request.getParameter( "clock" );
if( clock == null ) 
    clock = "30";
if(request.getParameter("flip")!=null)
    clock=""+(30*2);
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "0";
}
if(timeout===0)
{
   alert("Time Over");
}
//$(document).ready(function())
//{
//    ("#myModal").modal("show");
//}
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
 
        <form action="nextQues.jsp">
        <% 
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kbc?useSSL=false","root","root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from questions where qno='"+(y1)+"'");
        rs.next();
        String am=rs.getString(8);
        /*if(request.getParameter("flip")!=null)
        {
//             ResultSet rs1 = st.executeQuery("select * from questions where amount='"+am+"'");
//             rs1.next();
        }   */ 
        String ans=rs.getString("ans");
            String s1 = rs.getString("ques");
            out.println("<center><h1 class='heighttext' name='q1' style='color:white';>"+s1+"</center>");
            String s2 = rs.getString("o1");
            out.println("<center><input type='submit' class='heighttext1' onclick='clickCheckColor(this)' name='t1' value='"+s2+"' id='btn1'> <h1 style='color:white';></h1></button></center>");
            String s3 = rs.getString("o2");
            out.println("<center><input type='submit' class='heighttext2' onclick='clickCheckColor(this)' name='t1' value='"+s3+"' id='btn2'> <h1 style='color: white';></h1></button></center>");
            String s4 = rs.getString("o3");
            out.println("<center><input type='submit' class='heighttext3'  onclick='clickCheckColor(this)' name='t1' value='"+s4+"' id='btn3'> <h1 style='color:white';></h1></button></center>");
            String s5 = rs.getString("o4");
            out.println("<center><input type='submit' class='heighttext4' onclick='clickCheckColor(this)' name='t1' value='"+s5+"' id='btn4'> <h1 style='color:white';></h1></button></center>");
            String amount=rs.getString("amount");
            y1++;
       %>
        </form>
        <input type="text"  id="hiddenText1" value="<%=ans%>" hidden>
         <input type="text"  id="hiddenText2" value="<%=amount%>" hidden>
        
 <img class="background" alt="" src="ccc3.jpeg">
 <form action="winner.jsp"><input type ="submit" class="lifeline" value = "Quit" style="left: 28px; top: 48px"></form>
         <form><input type="button" class="lifeline" id="b2"  onclick="lifeLine2('50-50')" value="50-50" style="left: 636px; top: 50px"></form>
          <form action="questions.jsp"><input type="submit"  class="lifeline" style="left: 780px; top: 48px" name="flip" value="2x"></form>
          <form><input type="button" class="lifeline"  onclick="lifeLine()" style="left: 502px; top: 48px" value="Expert"></form>
          <form action="audience.jsp"><input type="submit" class="lifeline" style="left: 360px; top: 48px" value="Audience"></form>
          <input type="text" name="amount" class="amount" value="<%="Rs. "+rs.getString(8)%>" >
          <form action="<%=request.getRequestURL()%>" name="forma">
            <input type="text" name="clock" class="timer" value="<%=clock%>" style="border:0px">
     
</form>
     <%
     String s=request.getParameter("t1");
        if(s!=null){
            demo();
        }
        
     %>
     <%! public void demo(){
         try{
         for(int i=0;i<=5;i++){
         Thread.sleep(1000);
         }
         }
         catch(Exception ex1){
         }
        }%>
     <script>
         
         function lifeLine()
         {
              correct=document.getElementById('hiddenText1').value;
             console.log(correct);
             alert("Expert thinks it to be= "+correct);
//              <div class="popup" id="popup">
//         <h2>Expert Advice</h2>
//           <p>"Expert thinks it to be:"+correct</p>
//           <button type="button" onclick="closePopup()">OK</button>
//         </div>
//          let: popup=document.getElementById("popup");
//         function openPopup()
//         {
//            popup.classList.add("open-popup"); 
//         }
//         function closePopup()
//         {
//            popup.classList.remove("open-popup"); 
//         }
         }
      
         function lifeLine2(element)
         {
            correct=document.getElementById('hiddenText1');
           cor=correct.value;
//            var cor=document.getElementById('correct').value;
             console.log("c="+cor);
             a1=document.getElementById('btn1').value;
             b1=document.getElementById('btn2').value;
             c1=document.getElementById('btn3').value;
             d1=document.getElementById('btn4').value;
             right=document.getElementById('correct').value;
             console.log("a1="+a1);
             console.log("b1="+b1);
              console.log("c1="+c1);
               console.log("d1="+d1);
                console.log("right="+right);
                if(element==="50-50")
                {
                    if(a1===right)
                    {
                        console.log("hey");
                        document.getElementById('btn3').value="";
                        document.getElementById('btn4').value="";
                    }
                     if(b1===right)
                    {
                        
                        document.getElementById('btn1').value="";
                        document.getElementById('btn4').value="";
                        console.log(b1);
                    }
                    if(c1===right)
                    {
                        
                        document.getElementById('btn2').value="";
                        document.getElementById('btn4').value="";
                        console.log(c1);
                    }
                    if(d1===right)
                    {
                        
                        document.getElementById('btn3').value="";
                        document.getElementById('btn2').value="";
                        console.log(d1);
                    }
                    console.log("winner");
                }
         }
         
         function clickCheckColor(element){
            v1=element.value;
            correct=document.getElementById('hiddenText').value;
            console.log(v1);
            console.log(correct);
            if(v1===correct){
             element.style.background="green";
         }else
         {
               element.style.background="red";
         } 
         setTimeout("clickCheckColor()",5000);
         }
        </script>
<script>
//<!--
timer();
//-->
</script>
<script>
    popup=document.getElementById("popup");
         function openPopup()
         {
            popup.classList.add("open-popup"); 
         }
         function closePopup()
         {
            popup.classList.remove("open-popup"); 
         }
     </script>
 </body>
</html>
 <%
        
        }
        catch(Exception e1)
        {
        out.println(e1);
        }
        %>