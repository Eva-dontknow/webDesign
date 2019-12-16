<%--
  Created by IntelliJ IDEA.
  User: hy
  Date: 2019/12/15
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻</title>
</head>
<style>
    @font-face {
        font-family: font-style;
        src: url(/font/仿宋_GB2312.ttf);
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
        grid-template-columns: 4fr 1fr ;
        grid-template-areas: "header header" "picture picture" "article aside" "footer footer";
    }
    .area {
        padding: 5px;
        /*border: 1px solid #f08c00;*/
        /*border-radius: 5px;*/
    }
    /*header布局*/
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
    header  a{
        color: white;
        text-decoration: none;
        display: block;
        padding: 6px 15px;
        margin: 0;
    }
    header menu:hover {
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
    /*picture布局*/
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
    /*article布局*/
    article div{
        /*background-color: #eeeeee;*/
    }
    article div{
        margin-left: 170px;
        width: 830px;
    }
    article img.img1{
        width: 290px;
        height: 100px;
        margin-top: 20px;
        margin-left: 15px;
    }
    article p{

    }
    /*aside布局*/
    aside img.img2{
        margin-top: 100px;
        margin-right: 19px;
        width: 300px;
        height: 350px;
    }
    aside .p1{
        color: white;
        font-size: 1.2em;
    }
    aside div p.p2{
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
    .img-g img{
        float:left;
        width:1104px;
        height:487px;
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
            <a id="back" href="/page1.html"><img src="/img/loloo.png" alt="不存在">
                <img src="/img/rg.png" alt="不存在"></a>
        </div>
        <div class="top3">
            <ul class="right">
                <li class="login"><a href="#">登录</a></li>
                <li class="login"><a class="menu" href="/page1.html">退出</a></li>
                <!--                    <li class="login"><a href="#">帮助</a></li>-->
            </ul>
        </div>
        <nav>
            <ul>
                <li class="menu"><a href="academy.jsp">专业概况</a></li>
                <li class="menu"><a href="academy.jsp">专业历史</a></li>
                <li class="menu"><a href="news.jsp">新闻公告</a></li>
                <li class="menu"><a href="teacher.jsp">教师队伍</a></li>
                <li class="menu"><a href="#">教学成果</a></li>
                <li class="menu"><a href="#">招生就业</a></li>
                <li class="menu"><a href="lab.jsp">科研实验室</a></li>
                <li class="menu"><a href="https://icec.nefu.edu.cn/szdw/rjgc1.htm">更多信息</a></li>
            </ul>
        </nav>
    </header>
    <picture>
        <div>
            <img src="/img/atc/timg.jpg" alt="">
        </div>
    </picture>

    <article>
        <div>
            <h3 style="margin: 30px auto">新闻公告</h3>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;东北林业大学创建于1952年7月，原名东北林学院，是在浙江大学农学院森林系和东北农学院森林系基础上建立的，由原国家林业部直属管理。1985年8月更名为“东北林业大学”。2000年3月，由国家林业局划归教育部直属管理。2005年10月，经国家发改委、财政部和教育部批准，成为“211工程”重点建设高校。</p>
            <br>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2010年11月，教育部和国家林业局签署合作共建协议。2011年6月，成为国家“优势学科创新平台”项目重点建设高校。2012年3月，教育部与黑龙江省人民政府签署合作共建协议。2017年9月，经国务院批准列为“双一流”建设高校。</p>
            <br>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学校是一所以林科为优势、林业工程为特色的多学科协调发展的高等学校。现设有研究生院、19个学院和1个教学部，有68个本科专业，9个博士后科研流动站，1个博士后科研工作站，8个一级学科博士点，21个一级学科硕士点，17个类别的专业学位硕士点。拥有林业工程、林学2个世界一流建设学科，生物学、生态学、风景园林、农林经济管理4个国内一流建设学科，3个一级学科国家重点学科、11个二级学科国家重点学科、6个国家林业局重点学科、2个国家林业局重点（培育）学科、1个黑龙江省重点学科群、7个黑龙江省重点一级学科、4个黑龙江省领军人才梯队、4个黑龙江省“头雁”团队。有国家发改委和教育部联合批准的国家生命科学与技术人才培养基地、教育部批准的国家理科基础科学研究和教学人才培养基地（生物学），是国家教育体制改革试点学校，国家级卓越工程师和卓越农林人才教育培养计划项目试点学校，教育部深化创新创业教育示范高校，全国高校实践育人创新创业基地。</p>
            <br>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学校现有研究生、全日制本科生2.5万余人，其中本科生19290人，研究生6169人。自建校以来，已向国家输送各类毕业生17万余人。现有教职员工2300余人，其中专任教师1300余人。有中国工程院院士2人，“长江学者”特聘教授4人、青年学者1人，国家杰出青年基金获得者2人，国家优秀青年科学基金获得者4人，全国“百千万人才工程”人选4人，新世纪“百千万工程”人选4人，“万人计划”科技创新领军人才2人、科技创业领军人才1人、青年拔尖人才1人，“青年人才托举工程”入选者6人，“新世纪优秀人才支持计划”入选者30人。享受国务院政府特殊津贴专家27人，国家有突出贡献中青年专家3人，省部级有突出贡献中青年专家16人，“龙江学者”特聘教授10人、青年学者4人，全国优秀博士学位论文获得者4人，有教育部“长江学者和创新团队发展计划”创新团队2个，首批全国高校黄大年式教师团队1个。近年来，有国家教学名师奖获得者2人，全国优秀教师5人，全国模范教师1人，全国林业和草原教学名师2人，省级教学名师奖获得者13人，省级优秀教师8人次，全国“工人先锋号”获得者1个团队，全国“五一”劳动奖章获得者2人，全国“五一”巾帼标兵1人。2007年学校本科教学工作水平评估获得优秀。</p>
            <br>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学校加强党的全面领导，坚持“质量、绿色、创新、合作”理念，秉承“学参天地、德合自然”的校训，不断彰显和丰富办学特色，力争到2022年（建校70周年）使学校综合实力稳居国内同类高校前列，到2032年（建校80周年）努力建设成为特色鲜明的高水平研究型大学，到2052年（建校100周年）努力建设成为世界一流的林业大学。</p>
            <br> <br>
        </div>
    </article>

    <aside class="area">
        <div>
            <img class="img2" src="/img/atc/1%20(3).jpg" alt="">
        </div>
    </aside>
    <footer class="area">
        <div>
            <img src="/img/erweima.png" alt="图片不存在"><br>
            <p>东北林业大学&nbsp;&nbsp;&nbsp;&nbsp;软件工程专业 2019-12-20</p>
        </div>
    </footer>
</div>
</body>

</html>