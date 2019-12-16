<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            background-color: cornsilk;
        }
        .container {
            width: 600px;
            margin: 30px auto;
            border: 5px solid rgb(140,0,10);
            border-radius: 15px;
        }
        .container h2 {
            padding: 10px;
        }
        .form-group {
            position: relative;
            padding: 15px;
        }
        .form-group input {
            width: 100%;
            border: none;
            outline: none;
            border-bottom: 1px solid black;
            padding: 10px;
            margin-bottom: 15px;
        }

        /* pointer-events，元素重叠，或元素被透明元素遮挡，为遮挡元素添加属性，可使其指针事件无效 */
        .form-group label {
            position: absolute;
            padding: 10px;
            pointer-events: none;
            top: 5px;
            left: 0;
            transition: 0.5s;
        }
        .form-group input:focus {
            border-bottom: 1px solid rgb(140,0,10);
        }
        /* 输入框获得焦点，输入框校验成功，input之后的全部label */
        .form-group input:focus + label,
        .form-group input:valid + label {
            top: -10px;
            color: seagreen;
            font-size: 0.5em;
            font-weight: bold;
            /*粗体*/
        }
        button[type="submit"]
        {
            background: rgb(140,0,10);
            color: white;
            opacity: 0.7;
            display:block;
            margin:0 auto;
            padding: 16px 16px;
            border: #414141;
            border-radius: 4px;
            height: auto;

        }
        button[type="submit"]:hover
        {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>登录</h2>
    <form action="/login" method="post">
        <div class="form-group">
            <input type="text" name="username" placeholder="          请输入账号" required>
            <label>账号*</label>
        </div>
        <div class="form-group">
            <input type="password"  name="password" placeholder="         请输入密码" required>
            <label>密码*</label>
        </div>
        <button type="submit">确认提交</button><br>
    </form>
</div>
<div>
    <button ></button>
</div>
</body>
</html>