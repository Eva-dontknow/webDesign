<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>二级菜单测试</title>
    <meta charset="utf-8">
    <style type="text/css">

        /*为了使菜单居中*/
        body {
            padding-top:100px;
            text-align:center;
            background-color: #bbbbff;
        }
        /* -------------菜单css代码----------begin---------- */
        /*.menuDiv {
            border: 2px solid #aac;
            !* overflow: hidden; *!
            display:inline-block;
        }*/
        /* 去掉a标签的下划线 */
        .menuDiv a {
            text-decoration: none;
        }
        /* 设置ul和li的样式 */
        .menuDiv ul , .menuDiv li {
            list-style: none;
            margin: 0;
            padding: 0;
            float: left;
        }
        nav .second ,nav style.second1{
            list-style: none;
            margin: 0;
            padding: 0;
            float: left;
        }
        /* 设置二级菜单绝对定位，并隐藏 */
        .menuDiv > ul > li > ul {
            position: absolute;
            display: none;
        }
        nav .second .second1{
            display: none;
        }
        /* 设置二级菜单的li的样式 */
        .menuDiv > ul > li > ul > li {
            clear: both;
        }
        /* 鼠标放在一级菜单上，显示二级菜单 */
        .menuDiv > ul > li:hover ul {
            display: block;
        }
        /* 一级菜单 */
        .menuDiv > ul > li > a {
            width: 120px;
            line-height: 40px;
            color: black;
            background-color: #cfe;
            text-align: center;
            border-left: 1px solid #bbf;
            display: block;
        }
        /* 在一级菜单中，第一个不设置左边框 */
        .menuDiv > ul > li:first-child > a {
            border-left: none;
        }
        /* 在一级菜单中，鼠标放上去的样式 */
        .menuDiv > ul > li > a:hover {
            color: #f0f;
            background-color: #bcf;
        }
        /* 二级菜单 */
        .menuDiv > ul > li > ul > li > a {
            width: 120px;
            line-height: 36px;
            color: #456;
            background-color: #eff;
            text-align: center;
            border: 1px solid #ccc;
            border-top: none;
            display: block;
        }
        /* 在二级菜单中，第一个设置顶边框 */
        .menuDiv > ul > li > ul > li:first-child > a {
            border-top: 1px solid #ccc;
        }
        /* 在二级菜单中，鼠标放上去的样式 */
        .menuDiv > ul > li > ul > li > a:hover {
            color: #a4f;
            background-color: #cdf;
        }


    </style>
</head>
<body>

<header class="area">
    <div class="top1">
        <img id="bgi" src="/img/loloo.png" alt="不存在">
        <img src="/img/rg.png" alt="不存在">
    </div>
    <div class="top3">
        <ul class="right">
            <li class="login"><a  class="aaa" href="login.html">登录</a></li>
            <!--                <li class="login"><a href="#">退出登录</a></li>-->
            <li class="login"><a  class="aaa" href="#">帮助</a></li>
        </ul>
    </div>
    <nav>
        <ul class="second">
            <li class="second1"><a  class="aaa" href="employment.html">升学就业</a>
                <ul class="tow">
                    <li class="tt"><a href="">往届就业</a></li>
                    <li class="tt"><a href="">往届升学</a></li>
                    <li class="tt"><a href="">往届出国</a></li>
                </ul>
            </li>
            <li class="menu"><a class="aaa" href="lab.html">科研实验室</a></li>
        </ul>
    </nav>
</header>

<div class="menuDiv">
    <ul>
        <li>
            <a href="#">菜单一</a>
            <ul>
                <li><a href="#">二级菜单</a></li>
                <li><a href="#">二级菜单</a></li>
                <li><a href="#">二级菜单</a></li>
            </ul>
        </li>
        <!-- <li>
             <a href="#">菜单二</a>
             <ul>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
             </ul>
         </li>
         <li>
             <a href="#">菜单三</a>
             <ul>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
             </ul>
         </li>
         <li>
             <a href="#">菜单四</a>
         </li>
         <li>
             <a href="#">菜单五</a>
             <ul>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
                 <li><a href="#">二级菜单</a></li>
             </ul>
         </li>-->
    </ul>
</div>
</body>
</html>
