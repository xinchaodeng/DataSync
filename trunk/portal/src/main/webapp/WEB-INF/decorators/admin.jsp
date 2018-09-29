<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/9/21
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--<%@ page import="cn.csdb.commons.utils.CasURLCode" %>--%>
<html>
<head>
    <title>资源体系注册管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="${ctx}/resources/bundles/metronic/global/css/gfonts1.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/bootstrapv3.3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!--BEGIN PAGE STYLES-->
    <sitemesh:write property="head"/>
    <!--END PAGE STYLES-->
    <!-- BEGIN THEME STYLES -->
    <!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
    <link href="${ctx}/resources/bundles/metronic/global/css/components.css" id="style_components" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/resources/bundles/metronic/global/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/metronic/css/layout.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/bundles/metronic/css/themes/light.css" rel="stylesheet" type="text/css"
          id="style_color"/>
    <link href="${ctx}/resources/bundles/metronic/css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/css/reset.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/resources/css/main.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="${ctx}/resources/img/favicon.ico"/>
    <style type="text/css">
        a, a:hover, a:link  ,a:visited, a:active, a:hover{
            text-decoration: none !important;
        }
        body{
            background-color: gainsboro;
        }
        .main-wrap{
            background-color: white;
        }
    </style>
</head>
<body>
<!-- BEGIN HEADER -->
<div class="main-wrap">
    <div class="page-head">
        <div class="head-left">
            <img src="${ctx}/resources/img/u7.png" >
        </div>
        <div class="head-right">
            <div class="head-banner">
                <span style="font-weight:700;font-family: '新細明體-ExtB Bold', '新細明體-ExtB Regular', '新細明體-ExtB'">DataSync</span>
                <span style="font-weight:400;">&nbsp;&nbsp;&nbsp;二级机构商业、行业数据汇交客户端</span>
            </div>
            <div class="login-btn">
                请登录
            </div>
        </div>
    </div>
    <div class="page-body">
        <div class="body-left">
            <ul class="list-ul">
                <li><a href="#">专题信息</a></li>
                <li><a href="#">数据源</a></li>
                <li><a href="#">新建任务</a></li>
                <li><a href="#">数据任务</a></li>
            </ul>
        </div>
        <div class="body-right">
            <sitemesh:write property="body"/>
        </div>
    </div>
</div>
<!-- END HEADER -->
<!-- BEGIN FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${ctx}/resources/bundles/metronic/global/plugins/respond.min.js"></script>
<script src="${ctx}/resources/bundles/metronic/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="${ctx}/resources/bundles/jquery/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/jquery/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${ctx}/resources/bundles/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/bootstrapv3.3/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="${ctx}/resources/bundles/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/jquery/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/jquery/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/bundles/metronic/global/scripts/metronic.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/metronic/scripts/layout.js" type="text/javascript"></script>
<script src="${ctx}/resources/bundles/bootbox/bootbox.min.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    document.querySelector(".main-wrap").style.height=window.innerHeight + "px";
    jQuery(document).ready(function () {
        $.ajaxSetup({ cache: false });
        Metronic.init('${ctx}'); // init metronic core componets
        Layout.init(); // init layout
        bootbox.setLocale("zh_CN");
        $(function () {
            var path = window.location.pathname;
            if (path.indexOf('?') > -1)
                path = path.substring(0, path.indexOf('?'));
            $("ul.page-sidebar-menu a").each(function () {
                var href = $(this).attr("href");
                if (href.indexOf('?') > -1)
                    href = href.substring(0, href.indexOf('?'));
                if (href === path) {
                    $(this).parent().addClass("active");
                    if ($(this).parent().parent().hasClass("sub-menu")) {
                        $(this).parent().parent().parent().children("a").trigger("click");
                        $(this).parent().parent().parent().children("a").append('<span class="selected"></span>');
                        $(this).parent().parent().parent().addClass("active");
                    } else {
                        $(this).parent().children("a").append('<span class="selected"></span>');
                    }
                }
            });
        });
    });
</script>
<!-- END JAVASCRIPTS -->
<sitemesh:write property="div.siteMeshJavaScript"/>
</body>
</html>
