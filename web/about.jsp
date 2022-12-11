<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <title>infokit</title>
       <style type="text/css">
            #P
            {
                background-color: rgb(64,0,128);
                font-family: Algerian;
                font-weight: bold;
                color:white;
                font-size: 50px;
                font-style:italic;
                background-color:purple;
                
            }
            body
            {
                             background-color:white;
                
               }
               
               
               #S2
{
float:right;

height:600px;
width:700px;
box-shadow: 5px 5px 5px green;
}

                .B
{
background-color:red;
font-face:AR CHRISTY;
font-weight:bold;
text-shadow:5px,5px,5px,yellow;
font-size:25px;
color:white;
}
 

#S4
{
float:left;
margin:15px;

background-color:rgba(20,105,46,0.5);

height:200px;
width:200px;
box-shadow: 5px 5px 5px red;
}
#S4:hover
{
float:left;
margin:15px;
background-color:rgba(81,0,0,0.5);

height:200px;
width:200px;
box-shadow: 10px 10px 10px black;
}
.X
{
height:140px;
width:150px;
margin:25px;
}
.img1
{
height:100px;
width:150px;
margin:0px;
}
#B
{
height:600px;
width:650px;
}
           
         </style> 
       
<script type="text/javascript" src="jquery.js">
            </script>
            <script type="text/javascript">
                
                    
                   c=1;
               $(document).ready(function abhi(){
                                     
                   if(c==1)
                       {
                  $('#i1').fadeOut(2000,function(){
                      $(this).attr("src","j9.jpg");
                      $(this).fadeIn(2000);
                  c++;
                      abhi();
                  });
                  }
                       
                  /* else if(c==2)
                       {
                  $("#i1").slideUp(2000,function(){
                      $(this).attr("src","j10.jpg");
                      $(this).slideDown(2000);
                  c++;
                      abhi();
                  });
                       }*/
                      else if(c==3)
                       {
                  $("#i1").fadeOut(2000,function(){
                      $(this).attr("src","j6.jpg");
                      $(this).fadeIn(2000);
                  c++;
                      abhi();
                  });
                       }
                   else if(c==4)
                       {
                  $("#i1").slideUp(2000,function(){
                      $(this).attr("src","j5.jpg");
                      $(this).slideDown(2000);
                  c++;
                      abhi();
                  });
                       }
                         else if(c==5)
                       {
                  $("#i1").fadeOut(2000,function(){
                      $(this).attr("src","j9.jpg");
                      $(this).fadeIn(2000);
                  c++;
                      abhi();
                  });
                       }
                    else if(c==6)
                       {
                  $("#i1").fadeOut(1000,function(){
                      $(this).attr("src","j10.jpg");
                      $(this).fadeIn(1000);
                  c=1;
                      abhi();
                  });
               }
                      
                     
            });  
                   
               
            </script>
                
     </head>
    <body>
        <marquee id="P"><sub>&nbsp;&nbsp;&nbsp;&nbsp;WELCOME TO KAUN BANEGA CROREPATI</sub></marquee> 
        
     
    
      <img src="j10.jpg" id="i1" height="700px" width="700px">
      <div id="S2">
 
     <div id="B">
  <p style="font-size: 30px; margin-top:0px;text-shadow: rgb(255, 0, 0) 5px 5px 5px; color: black; font-family: Arial Helvetica sans-serif; font-style: italic; text-align: left; font-weight:bolder;"></p>
  <p style="font-family: Arial; margin-top:10px;text-shadow: rgb(255, 0, 0) 6px 5px 5px; font-size: 20px; text-align: center; color: black;"><br>1.Click on “Play” button to start the game.</br>
2. Login using Google or Facebook account. <br>
3. Provide confirmation to acceptance of terms and conditions.<br>
4. Click on the “Play Now” tab.<br>
5. Do your registration using the registration form.<br> 
6. Please note that we will be able to get in touch with you, if needed, only if the mobile number you have input is registered with the service provider in India.<br>
7. Answer Profile-related questions including gender, age, occupation and education related questions.<br>
8. Please note these questions are mandatory for participating in the game.<br>
9. After registering, login using correct user credentials.<br>
10. Then you have to pass fastest finger first for playing the game otherwise you will be out from the game.<br>
          
</div>
    </body>
</html>
