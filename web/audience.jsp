<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <style>
            body
            {
                margin: 0;
                padding: 0;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                font-family: "Roboto", sans-serif;
                background: #333;
            }
            .chart
            {
                width: 600px;
                height: 300px;
                display: block;
            }
            .numbers
            {
                color: #fff;
                margin: 0;
                padding: 0;
                width: 50px;
                height: 100%;
                display: inline-block;
                float: left;
            }
            .numbers li
            {
                list-style: none;
                height: 150px;
                position: relative;
                bottom: 145px;
            }
            .numbers span
            {
                font-size: 12px;
                font-weight: 600;
                position: absolute;
                bottom: 0;
                right: 10px;
            }
            .bars{
                color: #fff;
                font-size: 12px;
                font-weight: 600;
                background: #555;
                margin: 0;
                padding: 0;
                display: inline-block;
                width: 500px;
                height: 300px;
                box-shadow: 0 0 10px 0 #555;
                border-radius: 5px;
            }
            .bars li
            {
                display: table-cell;
                width: 100px;
                height: 300px;
                position: relative;
            }
            .bars span{
                width: 100%;
                position: absolute;
                bottom: -30px;
                text-align: center;
            }
            .bars .bar
            {
                display: block;
                background: #17C0EB;
                width: 50px;
                height: 100px;
                position: absolute;
                bottom: 0;
                margin-left: 25px;
                text-align: center;
                box-shadow: 0 0 10px 0 rgba(23, 192, 235, 0.5);
                transition: 0.5s;
                transition-property: background,box-shadow;
            }
            .bars .bar:hover
            {
                background: #55EFC4;
                box-shadow: 0 0 10px 0 rgba(85, 239, 196, 0.5);
                cursor: pointer;
            }
            .bars .bar:before
            {
                color: #fff;
                content: attr(data-percentage) '%';
                position: relative;
                bottom: 20px;
            }
        </style>
        <meta charset="utf-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        
    </head>
    <body>
        <%
            int ans=(int)Math.round(Math.random()*20+50);
            int op1=(int)Math.round(Math.random()*10+10);
            int op2=(int)Math.round(Math.random()*10+5);
            int op3=(int)Math.round(Math.random()*5+1);
            
        %>
        <div class="chart">
            <ul class="numbers">
                <li><span>100%</span></li>
                <li><span>50%</span></li>
                <li><span>0%</span></li>
            </ul>
            <ul class="bars">
                <li><div class="bar" data-percentage="<%=ans%>"></div><span>Option 01</span></li>
                <li><div class="bar" data-percentage="<%=op1%>"></div><span>Option 02</span></li>
                <li><div class="bar" data-percentage="<%=op2%>"></div><span>Option 03</span></li>
                <li><div class="bar" data-percentage="<%=op3%>"></div><span>Option 04</span></li>
            </ul>
            
               
        </div>
        <script type="text/javascript">
            $(function(){
                $('.bars li .bar').each(function(key,bar){
                    var percentage=$(this).data('percentage');
                    $(this).animate({
                        'height' : percentage + '%'
                    },1000);
                });
            });
        </script>
        
    </body>
</html>
