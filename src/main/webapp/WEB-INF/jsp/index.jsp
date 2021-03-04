<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/yst.css">

</head>
<body>
<div class="wrapper" id="canvansImg">
    <div class="part part1">
        <img src="images/f1-text.png" alt="" class="fl-text fadeInDownBig animated ">
    </div>
    <div class="part part2 wow bounceInUp" data-wow-duration="1s" data-wow-delay="1.5s" >
        <div class="f2-info f2-info1">
            <img src="images/f2-text.png" alt="" class="f2-text wow slideInLeft" data-wow-duration="1s" data-wow-delay="2.2s">
            <img src="images/f2-btn.png" alt="" class="f2-btn wow bounceIn" data-wow-duration="1s" data-wow-delay="2.5s" >
        </div>
        <div class="f2-info f2-info2">
            <img src="images/f3-text.png" alt="" class="f2-text wow slideInDown" data-wow-duration="1s" data-wow-delay=".4s">
            <input id="username" name="username" type="text" class="f2-input wow slideInLeft" data-wow-duration="1s" data-wow-delay=".8s">
            <img src="images/f3-btn.png" alt="" onclick="saveDate()" class="f2-btn wow bounceIn" data-wow-duration="1s" data-wow-delay=".8s" >
        </div>
        <img src="images/smallFlower.png" alt="" class="smallFlower slideInUp2">
        <img src="images/bigFlower.png" alt="" class="bigFlower slideInUp3">
    </div>
    <div class="part part3 wow bounceInUp" data-wow-duration="1s">
        <div class="qs-info">
            <img src="images/qs-tit1.png" alt="" class="qs-tit1 wow bounceInUp" data-wow-duration="1s" data-wow-delay=".8s">
            <div class="answer-con">
                <img src="images/qs1-a.png" onclick="cal('A')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="2s">
                <img src="images/qs1-b.png" onclick="cal('B')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="3s">
                <img src="images/qs1-c.png" onclick="cal('C')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="4s">
            </div>
        </div>
        <div class="qs-info">
            <img src="images/qs-tit2.png" alt="" class="qs-tit1 wow bounceInUp" data-wow-duration="1s" data-wow-delay=".8s">
            <div class="answer-con">
                <img src="images/qs2-a.png"  onclick="cal('A')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="2s">
                <img src="images/qs2-b.png"  onclick="cal('B')"  alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="3s">
                <img src="images/qs2-c.png"  onclick="cal('C')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="4s">
            </div>
        </div>
        <div class="qs-info">
            <img src="images/qs-tit3.png" alt="" class="qs-tit wow bounceInUp" data-wow-duration="1s" data-wow-delay=".8s">
            <div class="answer-con">
                <img src="images/qs3-a.png"  onclick="cal('A')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="2s">
                <img src="images/qs3-b.png"  onclick="cal('B')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="3s">
                <img src="images/qs3-c.png"  onclick="cal('C')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="4s">
            </div>
        </div>
        <div class="qs-info">
            <img src="images/qs-tit4.png" alt="" class="qs-tit wow bounceInUp" data-wow-duration="1s" data-wow-delay=".8s">
            <div class="answer-con">
                <img src="images/qs4-a.png"  onclick="cal('A')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="2s">
                <img src="images/qs4-b.png"  onclick="cal('B')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="3s">
                <img src="images/qs4-c.png"  onclick="cal('C')" alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="4s">
            </div>
        </div>
        <div class="qs-info">
            <img src="images/qs-tit5.png" alt="" class="qs-tit wow bounceInUp" data-wow-duration="1s" data-wow-delay=".8s">
            <div class="answer-con">
                <img src="images/qs5-a.png"  onclick="cal('A')"alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="2s">
                <img src="images/qs5-b.png"  onclick="cal('B')"alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="3s">
                <img src="images/qs5-c.png"  onclick="cal('C')"alt="" class="answer wow fadeInDown" data-wow-duration="1.2s" data-wow-delay="4s">
            </div>
        </div>
    </div>
    <div class="part part4 rotateIn wow">
        <div class="result-con">
            <img src="images/result-tit1.png"  id="an-title" alt="" class="resultTit fadeInDownBig wow" data-wow-duration="1s" data-wow-delay=".6s">
            <div class="progress-con">
                <div class="item fadeInDown wow" data-wow-duration="1s" data-wow-delay="1.8s">
                    <p class="progress-num">
                        <img src="images/0.png" alt="" class="imgNum">
                        <img src="images/1.png" alt="" class="imgNum">
                    </p>
                    <p class="progress-in">
                        <img src="images/progress-bg.png" alt="" class="progress-bg">
                        <img src="images/progress-bar.png" alt="" class="progress-bar">
                    </p>
                    <p class="progress-intro">
                        <img src="images/zh.png" alt="">
                    </p>
                </div>
                <div class="item fadeInDown wow" data-wow-duration="1s" data-wow-delay="2.5s">
                    <p class="progress-num">
                        <img src="images/2.png" alt="" class="imgNum">
                        <img src="images/5.png" alt="" class="imgNum">
                    </p>
                    <p class="progress-in">
                        <img src="images/progress-bg.png" alt="" class="progress-bg">
                        <img src="images/progress-bar.png" alt="" class="progress-bar">
                    </p>
                    <p class="progress-intro">
                        <img src="images/qz.png" alt="">
                    </p>
                </div>
                <div class="item fadeInDown wow" data-wow-duration="1s" data-wow-delay="3.5s">
                    <p class="progress-num">
                        <img src="images/9.png" alt="" class="imgNum">
                        <img src="images/5.png" alt="" class="imgNum">
                    </p>
                    <p class="progress-in">
                        <img src="images/progress-bg.png" alt="" class="progress-bg">
                        <img src="images/progress-bar.png" alt="" class="progress-bar">
                    </p>
                    <p class="progress-intro">
                        <img src="images/ql.png" alt="">
                    </p>
                </div>
            </div>
            <div class="result-intro fadeInUpBig wow" data-wow-duration="1s" data-wow-delay="4s">
                <img src="images/result-info1.png" id="an-desc" alt="">
                <!-- <span onclick="domShot()">zdfdddfs</span> -->
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

    function getAnswer(a) {
        console.log(a)
        var A = a.length-a.replaceAll("A", "").length;
        var B = a.length-a.replaceAll("B", "").length;
        var C = a.length-a.replaceAll("C", "").length;
        var index=1;
        if(A>=3){
            index=1;
        }else if(B>=3){
            index=2;
        }else if(C>=3){
            index=3;
        }else if(A==2&&B==2&&C==1){
            index=4;
        }else if(A==1&&B==2&&C==2){
            index=5;
        }else if(A==2&&B==1&&C==2){
            index=6;
        }
        if(index==1){
            //5个A超过3个 自信无畏
            var title="result-tit2.png";
            var desc="result-info2.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }else if(index==2){
            //5道题选择B答案超过3个的 英姿煞爽
            var title="result-tit6.png";
            var desc="result-info6.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }else if(index==3){
           // 5道题选择C答案超过3个的 幸福可期
            var title="result-tit5.png";
            var desc="result-info5.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }else if(index==4){
            // 5道题选择A答案2个+B答案2个+C答案1个的 自在随性
            var title="result-tit4.png";
            var desc="result-info4.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }else if(index==5){
            // 道题选择B答案2个+C答案2个+A答案1个的 迷人体质
            var title="result-tit1.png";
            var desc="result-info1.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }else if(index==6){
            // 道题选择A答案2个+C答案2个+B答案1个的 值得信赖
            var title="result-tit3.png";
            var desc="result-info3.png";
            $("#an-title").attr("src",title);
            $("#an-desc").attr("src",desc);
        }
    }
</script>
<script type="text/javascript" src="js/wow.js"></script>
<script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/html2canvas.js"></script>
<script type="text/javascript">
    var res = '';
    $(function(){
        // 初始化动画
        var wow = new WOW({
            boxClass: 'wow',
            animateClass: 'animated',
            mobile: true,
            live: true
        });
        wow.init();

        // new WOW().init();

        // 从进入测试到开始测试
        $(".f2-btn").click(function(){
            $('.f2-info1').hide()
            $('.f2-info2').show()
        })

        // 从开始测试到问题页面
        $(".f2-info2 .f2-btn").click(function(){
            $('.part3').show()
            // $('.f2-info2').show()
        });

        // 问题页面板块的显示隐藏
        $(".answer-con img").click(function(){
            var answerLength = $(".answer-con").length
            var qsLength = $(this).parents(".qs-info").nextAll().length

            if(qsLength == 0 ){
                $(".part4").show()
            }else{
                $(this).parents(".qs-info").hide();
                $(this).parents(".qs-info").next().show();

            }
        });

        // 获取随机数
        function rnd(n, m){
            var random = Math.floor(Math.random()*(m-n+1)+n);
            return random;
        }

        var imgStr = ''
        $(".progress-in .progress-bar").each(function(){
            let barHeight = rnd(60,95)
            $(this).height(barHeight + "%")
            imgStr += barHeight
        })

        for( let i = 0; i<$(".imgNum").length; i++){
            $(".imgNum").eq(i-1).attr("src","images/"+imgStr.substr(i-1, 1)+".png")
        }

    });

    //保存图片
    function domShot() {
        html2canvas(document.querySelector("#canvansImg"),{
            windowWidth: document.body.scrollWidth,
            windowHeight: document.body.scrollHeight,
            x: 0,
            y: document.body.scrollTop, // 用网页滚动的高度定位y轴顶点
            height: $("#canvansImg").height(), //注意 下面解决当页面滚动之后生成图片出现白边问题
            width: $("#canvansImg").width(),  //注意 下面解决当页面滚动之后生成图片出现白边问题
        }).then(canvas => {
            const imgUrl = canvas.toDataURL('image/png');
            const imgWrap = "<img src="+imgUrl+">";
            $("<div class='canvasImgWrap'><div class='canvasImgMask'></div></div>").append(imgWrap).appendTo("body");
            promptWindow("长按图片保存");
        });
    }

    // $("#username").click(function(){
    function saveDate(resStr) {
        var value =  $("#username").val();
        var adata = {
            "name": value,
            "result":resStr
        };
        var data = JSON.stringify(adata);
        $.ajax({
            type: "POST",
            dataType: "json",//通过GET方式上传请求
            contentType: "application/json",//上传内容格式为json结构
            data: data,                                 //上传的参数
            async: false,
            url: "/addInfo",     //请求的url。与后端@Request Mapping注解中的值一致。
            success: function (data) {          //请求成功的回调函数
                if (data.code === 0) {
                    alert("成功");
                    window.location.href = "success";
                }
            },
            error: function (e) {           //请求失败的回调函数
                console.log(e);
            }
        });
        // });

    };

    function cal(str) {
        res += str;
        console.log(res)
        if(res.length == 5) {
            var resStr = getAnswer(res)
            saveDate(resStr)
        }
    }
</script>
</html>

