<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>root</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    body{
        background-color: rgb(91,134,177);
    }
    h1{
        color:white;
        margin-left:150px;
        margin-top: 100px;
    }
    .news{
        border-radius: 5px;
        width: 900px;
        height: 350px;
        margin-top: 50px;
        margin-left:150px; ;
        background-color: white;
    }
    h3{
        margin: 50px;
    }
    .ipt{
        margin-left: 20px;
    }
    .article{
        width: 800px;
        height: 100px;
    }
    button{
        display: block;
        /*margin-left: 100px;*/
        padding: 10px 20px;
        margin-top: 10px;
        /*margin-bottom: 10px;*/
        background-color: white;
        border: 1px solid rgb(91,134,177);
    }
    button:hover{
        background-color: red;
        color: white;
    }



</style>
<body>
<h1>MY APPLICATION</h1>
<div class="news">
    <div class="edit">
        <div id="new"><h3>新闻发布</h3></div>
        <div class="ipt">
            标题：
<%--            private int id;--%>
<%--            private String title;--%>
<%--            private String content;--%>

            <form action="/addnews" method="post">

                <input type="text" name="title"><br><br><br>
                <%--            时间：--%>
                内容：<br>
                <textarea class="article" name="content" id="" cols="30" rows="10"></textarea> <br><br><br>
                <button  type="submit">提交</button><br>
            </form>


        </div>
    </div>
</div>
</body>
</html>