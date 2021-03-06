<%--
  Created by IntelliJ IDEA.
  User: xiajl
  Date: 2017/9/19
  Time: 15:28
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>DataSync专题库门户管理系统</title>
    <link href="${ctx}/resources/bundles/rateit/src/rateit.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/resources/css/dataUpload.css">
</head>
<body>
<div>
    <div class="uplod-head">
        <span>DataSync / 传输信息</span>
    </div>
    <div class="upload-title">
        <span>数据上传任务列表</span>
        <a href="">新建任务</a>
    </div>
    <div class="upload-search">
        <input type="text" class="form-control" style="width: 200px;display: inline-block" placeholder="名称">
        <input type="text" class="form-control" style="width: 200px;display: inline-block" placeholder="数据类型">
        <input type="text" class="form-control" style="width: 200px;display: inline-block" placeholder="状态">
        <button type="button" class="btn btn-success" style="margin-left: 166px">查询</button>
        <button type="button" class="btn btn-success">全部上传</button>
    </div>
    <div class="upload-table">
        <div class="table-message">列表加载中......</div>
        <table class="table table-bordered data-table" id="upload-list" >
            <thead>
            <tr>
                <th>任务编号</th>
                <th>名称</th>
                <th>数据来源</th>
                <th>上传位置</th>
                <th>创建时间</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="bd-data">
            <%--<tr>
                <td>1</td>
                <td>aaaa</td>
                <td>aaaaaa</td>
                <td>aaaaaa</td>
                <td>aaaaaa</td>
                <td>aaaaaa</td>
                <td><button type="button" class="btn btn-success upload">上传</button></td>
            </tr>
            <tr>
                <td>1</td>
                <td>高能物理主题数据库</td>
                <td>关系数据库</td>
                <td>dataOneDB</td>
                <td>2018-04-12 09:12</td>
                <td>成功</td>
                <td><button type="button" class="btn btn-success">重新上传</button></td>
            </tr>--%>
            </tbody>
        </table>
        <div class="page-message">

        </div>
        <div class="page-list"></div>
    </div>
</div>
<script type="text/html" id="resourceTmp1">
    {{each list as value i}}
        <tr keyIdTr="{{value.id}}">
            <td>{{i + 1}}</td>
            <td>{{value.name}}</td>
            <td>{{value.data}}</td>
            <td>{{value.source}}</td>
            <td>{{value.time}}</td>
            <td class="upload-percent">--</td>
            <td><button type="button" class="btn btn-success" keyIdTd="{{value.id}}" >{{btnName(value.num)}}</button></td>
        </tr>
    {{/each}}
</script>
</body>
<!--为了加快页面加载速度，请把js文件放到这个div里-->
<div id="siteMeshJavaScript">
    <script src="${ctx}/resources/bundles/rateit/src/jquery.rateit.js" type="text/javascript"></script>
    <script src="${ctx}/resources/bundles/artTemplate/template.js"></script>
    <script src="${ctx}/resources/js/subStrLength.js"></script>
    <script type="text/javascript">
        getName(1);
        var uploadList=[];
        template.helper("btnName",function (num) {
            var name=""
            if(num ==0){
                name="上传"
            }else if(num == 1){
                name ="正在上传"
            }else {
                name="重新上传"
            }
            return name
        })
        console.log($("#bd-data").find("#sfsdfs").html())
        $("#upload-list").delegate("button","click",function () {
            /*send request*/
            $(this).text()
            /*send upload request*/

        })
        var List ={
            list:[
                {
                    id:"111111111",
                    name:"aaa",
                    data:"关系数据库",
                    source:"a数据库",
                    time:"2018-04-12 09:12",
                    num:0
                },
                {
                    id:"222222",
                    name:"aaa",
                    data:"关系数据库",
                    source:"a数据库",
                    time:"2018-04-12 09:12",
                    num:1
                },
                {
                    id:"3333333",
                    name:"aaa",
                    data:"关系数据库",
                    source:"a数据库",
                    time:"2018-04-12 09:12",
                    num:2
                },
                {
                    id:"4444444",
                    name:"aaa",
                    data:"关系数据库",
                    source:"a数据库",
                    time:"2018-04-12 09:12",
                    num:1
                }
            ]
        }

            var aaa = template("resourceTmp1", List);
            $("#bd-data").append(aaa);

        function getPrecent(id) {
            setInterval(function () {
              console.log(id)
            },1100)
        }

    </script>
</div>

</html>
