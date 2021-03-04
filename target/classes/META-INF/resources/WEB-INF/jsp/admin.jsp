<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据统计后台</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/kkpager.js"></script>
    <link rel="stylesheet" type="text/css" href="/style/kkpager_orange.css" />
    <!--[if  !IE ]>
    <style type="text/css">
        #kkpager_btn_go {
            top:-16px  !important;
        }
    </style> <![endif]-->
</head>
<body>
<table  class="table table-bordered" align="center" width="50%">
    <caption style="text-align: center;font-size: 50px"><b>养生堂h5测试数据统计</b></caption>
    <tr>
        <th>编号</th>
        <th>名字</th>
        <th>测试结果</th>
        <th>测试时间</th>
    </tr>
    <c:forEach items="${list.list }" var="user">
        <tr>
            <td>${user.id }</td>
            <td>${user.name }</td>
            <td>${user.result }</td>
            <td>${user.timeStr }</td>
        </tr>
    </c:forEach>
</table>
<div id="kkpager"></div>
</body>
</html>
<script type="text/javascript">
    function getParameter(name) {
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r!=null) return unescape(r[2]); return null;
    }

    //init
    $(function(){

        var totalRecords = "${list.total}";
        var totalPage = "${list.pages}";
        var pageNo = getParameter('pageNum');
        if(!pageNo){
            pageNo = 1;
            //原本是实现无刷新跳转，我这是根据自己需求做的有刷新时跳转
            // 如：www.baidu.com/abcd/index.jhtml
            /*	let str=window.location.pathname;
                let two; // 第二个斜杠后内容
                let first = str.indexOf("/") + 1;
                let heng = str.indexOf("/", first);
                if (heng == -1) {
                    } else {
                      two = str.substring(heng).substring(1, str.length);
                    }
                if(two=="index.jhtml"){
                    pageNo = 1;
                }else{
                    pageNo = num;//num是根据自己要点击第几页写的
                }*/
        }
        //生成分页
        //有些参数是可选的，比如lang，若不传有默认值
        kkpager.generPageHtml({
            pno : pageNo,
            //总页码
            total : totalPage,
            //总数据条数
            totalRecords : totalRecords,
            mode : 'click',//默认值是link，可选link或者click
            click : function(n){
                this.selectPage(n);
                location.href="/ystadmin?pageSize=${list.pageSize}&pageNum="+n;
                if(n==1){
                    //原本是实现无刷新跳转，我这是根据自己需求做的有刷新时跳转
                    //第一页写逻辑跳转
                    // 如：window.location.href=......;
                }else{
                    //除了第一页写逻辑跳转
                }
                return false;
            }

            /*		,lang: {
                        firstPageText			: '首页',
                        firstPageTipText		: '首页',
                        lastPageText			: '尾页',
                        lastPageTipText			: '尾页',
                        prePageText				: '上一页',
                        prePageTipText			: '上一页',
                        nextPageText			: '下一页',
                        nextPageTipText			: '下一页',
                        totalPageBeforeText		: '共',
                        totalPageAfterText		: '页',
                        currPageBeforeText		: '当前第',
                        currPageAfterText		: '页',
                        totalInfoSplitStr		: '/',
                        totalRecordsBeforeText	: '共',
                        totalRecordsAfterText	: '条数据',
                        gopageBeforeText		: '&nbsp;转到',
                        gopageButtonOkText		: '确定',
                        gopageAfterText			: '页',
                        buttonTipBeforeText		: '第',
                        buttonTipAfterText		: '页'
                    }*/
        });
    });

</script>