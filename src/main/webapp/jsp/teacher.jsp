<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 13:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>师资</title>
</head>
<style>
    /*字体*/
    @font-face {
        font-family: font-style;
        src: url(font/仿宋_GB2312.ttf);
    }
    /*总体布局*/
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    /*header布局*/
    header {
        background-image:url("/img/headimg.png");/*背景图片*/
        background-repeat: no-repeat;
        background-size: cover;
    }
    header > nav > ul {
        display: flex;
        list-style: none;
    }
    header  a {
        color: white;
        text-decoration: none;
        display: block;
        padding: 6px 15px;
        margin: 0;
    }
    header .menu:hover {
        background-color: rgb(122,0,5);
    }
    header > nav > ul >li{
        font-weight: normal;
        /*font-family:"font-style";*/
        margin: 0 auto;    /*自动分配距离*/
        padding:0;
    }
    header > nav{
        margin: 0;
        padding: 0;
    }
    header .top1{
        display: inline-block;
    }
    header p{
        display:inline-block ;
        font-size: 3em;
        color:white;
        top: 10px;
        margin-top: auto;
    }
    header .top3{
        display: inline-block;
        padding:0;
        margin-right:10px ;
        margin-top: 7px;
        float: right!important;
    }
    header .login{
        display:inline-block;
    }
    #back{
        color: white;
        text-decoration: none;
        display: block;
        padding: 6px 15px;
        margin: 0;
    }
    /*图片*/
    picture{
        width: 1400px;
        height: 300px;
        grid-area: picture;
    }
    picture div img{
        width: 1200px;
        height: 300px;
        margin-left: 100px;
        text-align: center;
    }
    /*aside*/
    aside{
        display: inline-block;
    }
    aside .sidebar{
        display: inline-block;
        margin-top: 20px;
        margin-left: 15px;
    }
    aside ul li{
        text-align: center;
        list-style-type: none;
        width: 300px;
    }
    .sidebar {
        background: white;
    }
    .sidebar > h2 {
        background: rgb(143,0,10);
        color: white;
        padding: 10px 20px;
    }
    .sidebar a{
        border-bottom: 0.1px solid black;
        display: block;
        color: black;
        text-decoration: none;
        padding: 10px 20px;
        transition: transform 0.5s;
    }
    .sidebar a:hover {
        background: rgb(143,0,10);
        color: white;
        transform: scale(1.1);
    }
    aside .img1{
        width: 320px;
        margin-left: 8px;
        margin-top: 20px;
        margin-bottom: 0;
    }
    aside .img2{
        height: auto;
        width: 320px;
        margin-left: 10px;
        margin-right: 10px;
    }
    /*模态框*/
    #popBox {
        display: none;
        background-color: #FFFFFF;
        z-index: 11;
        width: 600px;
        height: 400px;
        position:fixed;
        top:4%;
        right:0;
        left:20%;
        bottom:0;
        margin:auto;
        border: 1px solid rgb(155,0,0);
        overflow:auto;
    }
    #popBox .font img{
        float: left;
        width: 90px;
        height: 110px;
        margin-left: 15px;
        margin-right: 15px;
    }
    #popBox .font p{
        margin-top: 10px;
        margin-left: 15px;
        margin-right: 10px;
    }
    #popBox .close1{
        font-size: 0.8em;
        margin-left: 40%;
        /*float: right;*/
        position: fixed;
    }
    #popBox div .close2{
        font-size:1em;
        text-align: center;
        /*margin-bottom: 0;*/
        margin-bottom: 5px;
    }
    #popBox .aa2{
        text-decoration: none;
        color:white;
        padding: 0;
        margin: 0;
    }
    #popBox .aa1{
        text-decoration: none;
        color:white;
        background-color: rgb(155,0,0);
    }
    #popBox .btn2{
        box-shadow: none;
        background-color: rgb(155,0,0);
        color: white;
        padding: 7px 20px;
        text-decoration: none;
        display: inline-block;
        border-radius: 4px;
    }
    /*模态框一*/
    #popBox1{
        display: none;
        background-color: #FFFFFF;
        z-index: 11;
        width: 600px;
        height: 400px;
        position:fixed;
        top:4%;
        right:0;
        left:20%;
        bottom:0;
        margin:auto;
        border: 1px solid rgb(155,0,0);
        overflow:auto;
    }
    #popBox1 .font img{
        float: left;
        width: 90px;
        height: 110px;
        margin-left: 15px;
        margin-right: 15px;
    }
    #popBox1 .font p{
        margin-top: 10px;
        margin-left: 15px;
        margin-right: 10px;
    }
    #popBox1 .close1{
        font-size: 0.8em;
        margin-left: 40%;
        /*position: fixed;*/
        float: right;
        /*position: fixed;*/
    }
    #popBox1 div .close2{
        height: 100%;
        font-size:1em;
        text-align: center;
        /*margin-bottom: 0;*/
        margin-bottom: 5px;
        float: bottom;
    }
    #popBox1 .aa2{
        text-decoration: none;
        color:white;
        padding: 0;
        margin: 0;
    }
    #popBox1 .aa1{
        text-decoration: none;
        color:white;
        background-color: rgb(155,0,0);
    }
    #popBox1 .btn2{
        box-shadow: none;
        background-color: rgb(155,0,0);
        color: white;
        padding: 7px 20px;
        text-decoration: none;
        display: inline-block;
        border-radius: 4px;
    }
    /*teacher*/
    .teacher{
        position: absolute;
        height: 510px;
        width: 900px;
        /*background-color: blanchedalmond;*/
        display: inline-block;
        margin-top: 20px;
        margin-left: 10px;
    }
    .teacher>h4{
        margin-top: 10px;
        margin-left: 15px;
    }
    .a1{
        display: inline-block;
        margin-left: 90px;
    }
    .a2,.a3,.a4{
        display: inline-block;
        margin: 15px;
    }
    .a1 li ,.a2 li,.a3 li,.a4 li{
        margin: 50px;
        padding: 10px;
        list-style-type: none;
    }
    /*页脚*/
    footer {
        color: white;
        background-image:url("/img/footerimg.png");
        background-repeat: no-repeat;
        background-size: cover;
        grid-area: footer;
    }
    footer div{
        text-align: center;
    }
    footer img{
        text-align: center;
        display: inline-block;
        margin-bottom: 0;
        margin-top: 0;
        width: 50px;
        height: 50px;
        position: relative;
    }
    footer p{
        margin: 0;
        display: inline-block;
        text-align: center;
    }
</style>
<body>
<div class="container">
    <header class="area">
        <div class="top1">
            <a id="back" href="page1.html"><img src="/img/loloo.png" alt="不存在">
                <img src="/img/rg.png" alt="不存在"></a>
        </div>
        <div class="top3">
            <ul class="right">
                <!--                <li class="login"><a href="#">登录</a></li>-->
                <li class="login"><a class="menu" href="index.jsp">退出</a></li>
                <!--                <li class="login"><a href="#">帮助</a></li>-->
            </ul>
        </div>
        <nav>
            <ul>
                <li class="menu"><a href="academy.jsp">专业概况</a></li>
                <li class="menu"><a href="academy.jsp">专业历史</a></li>
                <li class="menu"><a href="news.jsp">新闻公告</a></li>
                <li class="menu"><a href="teacher.jsp">教师队伍</a></li>
                <li class="menu"><a href="achievement.jsp">教学成果</a></li>
                <li class="menu"><a href="employment.jsp">招生就业</a></li>
                <li class="menu"><a href="lab.jsp">科研实验室</a></li>
                <li class="menu"><a href="https://icec.nefu.edu.cn/szdw/rjgc1.htm">更多信息</a></li>
            </ul>
        </nav>
    </header>
    <!--<picture>
            <div>
                <img src="img/atc/图片7.png" alt="">
            </div>
        </picture>-->
    <aside>
        <div class="sidebar">
            <img class="img1" src="/img/atc/8.png" alt=""><br>
            <ul>
                <li><a href="#">教学名师</a></li>
                <li><a href="#">杰出人才</a></li>
                <li><a href="#">博士生导师</a></li>
                <li><a href="#">研究生导师</a></li>
                <li><a href="#">外聘老师</a></li>
            </ul>
            <img class="img2" src="/img/atc/3.jpg" alt="">
        </div>
    </aside>
    <!--teacher-->
    <div class="teacher">
        <h4 style="color: rgb(155,0,0)">总览</h4>
        <ul class="a1">
            <li  onclick="popBox1()">王波</li>
            <li  onclick="popBox()">罗嗣卿</li>
            <li  onclick="popBox()">谷志新</li>
        </ul>
        <ul class="a2">
            <li  onclick="popBox()">张锡英</li>
            <li  onclick="popBox()">邱兆文</li>
            <li  onclick="popBox()">李琰</li>
        </ul>
        <ul class="a3">
            <li  onclick="popBox()">刘丹</li>
            <li  onclick="popBox()">苏建民</li>
            <li  onclick="popBox()">边继龙</li>
        </ul>
        <ul class="a4">

            <li  onclick="popBox()">赵玉茗</li>
            <li  onclick="popBox()">单颖</li>
            <li  onclick="popBox()">李莉</li>
        </ul>
    </div>
    <!--模态框-->
    <div id="popBox">
        <div class="close1">
            <a class="aa1" href="javascript:void(0)" onclick="closeBox()">关闭</a>
        </div>
        <div class="font">
            <p><img src="/img/teach/1.png" alt=""><span>罗嗣卿</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias animi architecto autem, cumque deserunt dolore eligendi, eum explicabo illum impedit incidunt iusto molestias nihil quaerat ratione repellendus saepe vero voluptate? Alias aperiam assumenda cum delectus earum eligendi exercitationem facilis fugiat fugit ipsam iusto libero maxime molestiae molestias neque non omnis provident quas quidem quo, quos sed tempora tenetur ullam unde ut veritatis vero. Asperiores aspernatur aut, commodi cupiditate deleniti deserunt dolore exercitationem expedita inventore ipsum itaque iusto maiores molestias neque nobis qui quis quisquam rem repellendus rerum, sed sequi soluta suscipit tempore temporibus unde velit voluptas. Aperiam, beatae culpa ex expedita explicabo illum laborum, minus odio omnis, porro quasi reiciendis temporibus vel voluptatem voluptatibus! Alias animi atque consectetur culpa cum cumque debitis doloremque, dolores error est illum incidunt laboriosam laborum nihil placeat quae quam quis quod sit vero voluptate voluptates voluptatum! Accusamus aliquam, aliquid at consectetur consequatur dignissimos dolor eaque est id minima, molestiae pariatur, perspiciatis possimus provident qui repudiandae sequi similique veritatis vero vitae voluptate voluptates voluptatibus. Accusamus alias cum distinctio doloremque harum iure magni minus officiis, quam sed, tempore voluptatum? Accusamus alias aliquid at atque aut, consequatur earum eius enim hic itaque magni maxime, nisi nostrum nulla perspiciatis praesentium provident quam quibusdam recusandae repellendus sapiente sed sequi sit suscipit temporibus veritatis voluptate. Eum minus quisquam recusandae repellat. Eaque eos iure nihil officiis ratione. Cumque dolorum excepturi explicabo fugiat, inventore laboriosam magni molestiae molestias porro possimus qui ratione recusandae tempora. A architecto consectetur delectus fuga hic illo in minima, numquam obcaecati, officiis possimus quasi quidem repellat reprehenderit veniam? Aspernatur autem ducimus eveniet id itaque labore laboriosam nihil porro quidem, repudiandae saepe sequi veniam vitae. Accusamus adipisci animi delectus dolore eos est in inventore libero maxime minus, mollitia nesciunt nostrum odio omnis, praesentium quod ratione sunt temporibus totam velit voluptates.</p><div class="close2">
            <button class="btn2"><a class="aa2" href="javascript:void(0)" onclick="closeBox()">关闭</a></button>
        </div>
        </div>
    </div>
    <!--模态框1-->
    <div id="popBox1">
        <div class="close1">
            <a class="aa1" href="javascript:void(0)" onclick="closeBox1()">关闭</a>
        </div>
        <div class="font">
            <p><img src="/img/teach/bo.jpg" alt=""><span>王波</span>王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid aperiam aspernatur dolorum et, excepturi exercitationem laboriosam laudantium nam officia perspiciatis quaerat quo suscipit unde voluptas voluptatum. Asperiores eos, maiores molestiae molestias odit unde voluptatem. Alias autem blanditiis, excepturi iure, iusto modi nulla numquam officiis quisquam quod quos, sint soluta unde. Lorem ipsum dolor sit amet, consect</p><div class="close2">
            <!--            <button class="btn2"><a class="aa2" href="javascript:void(0)" onclick="closeBox1()">关闭</a></button>-->
        </div>
        </div>
    </div>
    <!--页脚-->
    <footer class="area">
        <div>
            <img src="/img/erweima.png" alt="图片不存在"><br>
            <p>东北林业大学&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业 2019-12-20</p>
        </div>
    </footer>
</div>
</body>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
    /*模态框：点击弹出按钮*/
    function popBox() {
        var popBox = document.getElementById("popBox");
        var popLayer = document.getElementById("popLayer");
        popBox.style.display = "block";
        popLayer.style.display = "block";
    }
    /*模态框：点击关闭按钮*/
    function closeBox() {
        var popBox = document.getElementById("popBox");
        var popLayer = document.getElementById("popLayer");
        popBox.style.display = "none";
        popLayer.style.display = "none";
    }
    /*模态框一：点击弹出按钮*/
    function popBox1() {
        var popBox1 = document.getElementById("popBox1");
        var popLayer = document.getElementById("popLayer");
        popBox1.style.display = "block";
        popLayer.style.display = "block";
    }
    /*模态框一：点击关闭按钮*/
    function closeBox1() {
        var popBox1 = document.getElementById("popBox1");
        var popLayer = document.getElementById("popLayer");
        popBox1.style.display = "none";
        popLayer.style.display = "none";
    }
</script>
</html>