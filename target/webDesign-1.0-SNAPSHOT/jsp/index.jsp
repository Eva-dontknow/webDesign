<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<%--<base href="/WEB-INF">--%>
<head>
    <meta charset="UTF-8">
    <title>首页</title>
</head>
<style>
    @font-face {
        font-family: font-style;
        src: url(../font/仿宋_GB2312.ttf);
    }
    /*总体布局*/
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    .container {
        display: grid;
        /*grid-gap: 3px;*/
        grid-template-columns: 1fr 4fr ;
        grid-template-areas: "header header" "aside article" "footer footer";
    }
    .area {
        padding: 5px;
        /*border: 1px solid #f08c00;*/
        /*border-radius: 5px;*/
    }
    /*header布局*/
    #bgi{
        margin: 0;
        padding: 0;
    }
    header {
        background-image:url("/img/headimg.png");/*背景图片*/
        background-repeat: no-repeat;
        background-size: cover;
        grid-area: header;
    }
    header > nav > ul {
        display: flex;
        list-style: none;
    }
    header  .aaa {
        color: white;
        text-decoration: none;
        display: block;
        padding: 6px 15px;
        margin: 0;
    }
    header .aaa:hover {
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
    /*二级菜单栏*/
    aside{
        background-color: rgb(143,0,11);
    }
    aside div{
        background-color: rgb(143,0,11);
        width: 286px;
        height: 475px;
    }
    aside .asd1{
        /*position: relative;*/
        text-align: center;
        /*border-radius: 5px;*/
        width: 286px;
        height: 160px;
        /*left: 2px;*/
    }
    aside .asd2{
        position: relative;
        text-align: center;
        /*border-radius: 5px;*/
        width: 286px;
        height: 250px;
    }
    aside div .p1{
        color: white;
        font-size: 1.2em;
    }
    aside div .p2{
        color: white;
        font-size: 1em;
        margin-bottom: auto;
    }
    article {
        grid-area: article;
    }
    article .img-g{
        border-radius: 5px;
        height: 495px;
    }
    /*article部分滑动图片样式*/
    .bannerimage{
        width:1104px;
        height:487px;
        float:left;
        background-size:100% 100%;
        color:#fff;
        /*box-shadow: 0 0 12px 2px  #142732;*/
    }
    .box{
        width:1104px;
        height:487px;
        margin:0 auto;
        overflow: hidden;
    }
    /* box的宽度为img的个数乘以bannerimage的宽度*/
    .img-g{
        width:6624px;
        height:487px;
        position:relative;
    }
    .img-g img{
        float:left;
        width:1104px;
        height:487px;
    }
    .button-g{
        position:relative;
        top:-35px;
        text-align:center;
    }
    .button-g span{
        display:inline-block;
        position:relative;
        z-index:10;
        width:10px;
        height:10px;
        margin:0 5px;
        border-radius:100%;
        cursor: pointer;
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
<body onload = "run();">
<div class="container">
    <header class="area">
        <div class="top1">
            <img id="bgi" src="/img/loloo.png" alt="不存在">
            <img src="/img/rg.png" alt="不存在">
        </div>
        <div class="top3">
            <ul class="right">
                <li class="login"><a  class="aaa" href="/login">登录</a></li>
                <!--                <li class="login"><a href="#">退出登录</a></li>-->
                <li class="login"><a  class="aaa" href="/jsp/help.jsp">帮助</a></li>
            </ul>
        </div>
        <nav>
            <ul class="second">
                <li class="menu"><a class="aaa" href="/jsp/academy.jsp">专业概况</a></li>
                <li class="menu"><a class="aaa" href="#">专业历史</a></li>
                <li class="menu"><a class="aaa" href="/shownews">新闻公告</a></li>
                <li class="menu"><a class="aaa" href="/jsp/teacher.jsp">师资队伍</a></li>
                <li class="menu"><a class="aaa" href="#">教学成果</a></li>
                <li class="second1"><a  class="aaa" href="/jsp/employment.jsp">升学就业</a>
                    <!--                    <ul class="tow">-->
                    <!--                        <li class="tt"><a href="">往届就业</a></li>-->
                    <!--                        <li class="tt"><a href="">往届升学</a></li>-->
                    <!--                        <li class="tt"><a href="">往届出国</a></li>-->
                    <!--                    </ul>-->
                </li>
                <li class="menu"><a class="aaa" href="/jsp/lab.jsp">科研实验室</a></li>
                <li class="menu"><a class="aaa" href="https://icec.nefu.edu.cn/szdw/rjgc1.htm">更多信息</a></li>
            </ul>
        </nav>
    </header>
    <aside class="area">
        <div>
            <img class="asd1" src="/img/asd/aside.png" alt=""><br>
            <b class="p1">校训：</b>
            <hr style="border:0.5px solid white;">
            <p class="p2"> 学参天地,<br>
                &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;德合自然
            </p>
            <a href=""><img id="banner" alt="banner" class="asd2" src="/img/asd/asd0.png"></a>

        </div>
    </aside>
    <article>
        <div class="bannerimage">
            <div class="box">
                <div class="img-g" style="left:0;transition:left 1s;">
                    <img src="/img/atc/1%20(1).png" alt="4">
                    <img src="/img/atc/1%20(2).jpg" alt="1">
                    <img src="/img/atc/1%20(3).jpg" alt="3">
                    <img src="/img/atc/1（4）.jpg" alt="4">
                    <img src="/img/atc/2.jpg" alt="2">
                    <img src="/img/atc/3.jpg" alt="4">
                    <!--                    <img src="img/atc/4.jpg" alt="4">-->
                    <!--                    <img src="img/atc/5.jpg" alt="4">-->
                </div>
                <div class="button-g">
                    <span data-index='0' style="background-color: #eeeeee"></span>
                    <span data-index='1' style="background-color: rgba(255, 255, 255, 0.5)"></span>
                    <span data-index='2' style="background-color: rgba(255, 255, 255, 0.5)"></span>
                    <span data-index='3' style="background-color: rgba(255, 255, 255, 0.5)"></span>
                    <span data-index='4' style="background-color: rgba(255, 255, 255, 0.5)"></span>
                    <span data-index='5' style="background-color: rgba(255, 255, 255, 0.5)"></span>
                </div>
            </div>
        </div>
    </article>
    <footer class="area">
        <div>
            <img src="/img/erweima.png" alt="图片不存在"><br>
            <p>东北林业大学&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业 2019-12-20</p>
        </div>
    </footer>
</div>
</body>

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>

<script type="text/javascript">

    /*aside部分*/
    var banners = ["/img/asd/asd0.png","/img/asd/asd1.png","/img/asd/asd2.png","/img/asd/asd3.png"]; // 图片地址
    var counter = 0;
    function run(){
        setInterval(cycle,3000);  //重复运行cycle函数，周期1000ms
    }
    function cycle(){
        counter++;
        if(counter == banners.length)
            counter = 0;
        document.getElementById("banner").src = banners[counter];
    }

    /*article部分*/
    $(function () {
        // 实现自动播放
        var p=document.getElementsByClassName('img-g')[0];
        var button=document.querySelectorAll('.button-g span');
        // 设置3秒播放
        window.timer=setInterval(move,3000);
        // 轮播设置
        function move(){
            // bannerimage的宽度乘以图片的个数
            if(parseInt(p.style.left)>-6620){
                // 和bannerimage的宽度保持一致即可：1104
                p.style.left=parseInt(p.style.left)-1104+'px';
                p.style.transition='left 1s';
                tog(-Math.round(parseInt(p.style.left)/1104));
                if(parseInt(p.style.left)<=-6620){
                    setTimeout(function(){
                        tog(0);
                        p.style.left='0px';
                        p.style.transition='left 0s';
                    },1000)
                }
            }else{
                p.style.left='0px';
                p.style.transition='left 0s';
            }
        }

        // 设置小圆点
        for(var i=0;i<button.length;i++){
            // button[i].style.backgroundColor='#eee';
            button[i].onclick=function(){
                p.style.left=-1104*this.getAttribute('data-index')+'px';
                tog(this.getAttribute('data-index'));
                clearInterval(window.timer);
                window.timer=setInterval(move,3000);
            }
        }
        // 设置小圆点
        function tog(index){
            if(index>5){
                tog(0);
                return;
            }
            for(var i=0;i<button.length;i++){
                button[i].style.backgroundColor='rgba(255, 255, 255, 0.5)';
            }
            button[index].style.backgroundColor='rgb(255, 255, 255)';
        }
        // 鼠标移上事件
        p.onmouseover=function(){
            clearInterval(window.timer)
        };
        // 鼠标移除事件
        p.onmouseout=function(){
            window.timer=setInterval(move,3000);
        }
    });
</script>
</html>