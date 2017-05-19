<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/10
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.2.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/ssm.css">
    <link href="css/zTreeStyle/zTreeStyle.css" rel="stylesheet">
    <script src="js/sm.js"></script>
    <script src="js/jquery-1.4.4.min.js"></script>
    <script src="js/jquery.ztree.core-3.2.js"></script>
    <script src="js/jquery.ztree.excheck-3.2.js"></script>
    <script src="js/jquery.ztree.exedit-3.2.js"></script>

    <script>
        var setting = {
            view: {
                //dblClickExpand: false,
                expandSpeed: 100 //设置树展开的动画速度
            },
            //获取json数据
            async : {
                enable : true,
                url : "/equipmentscontroller/getEquipmentsTree", // Ajax 获取数据的 URL 地址
                autoParam : [ "id", "name" ] //ajax提交的时候，传的是id值
            },
            data:{ // 必须使用data
                simpleData : {
                    enable : true,
                    idKey : "id", // id编号命名
                    pIdKey : "pId", // 父id编号命名
                    rootPId : 0
                }
            },
             //回调函数
            callback : {
                onClick : function(event, treeId, treeNode, clickFlag) {
                    if(!treeNode.isParent) {
                       // alert(" 节点id是：" + treeNode.id + ", 节点文本是：" + treeNode.name);
                       ooo(event, treeId, treeNode);
                        console.log(" 节点id是：" + treeNode.id + ", 节点文本是：" + treeNode.name);
                    }
                    return false;
                },
                //捕获异步加载出现异常错误的事件回调函数 和 成功的回调函数
                onAsyncSuccess : function(event, treeId, treeNode, msg){
                    console.log("msg"+msg);
                }
            }
        };

        // 过滤函数
        function filter(treeId, parentNode, childNodes) {
            if (!childNodes)
                return null;
            for ( var i = 0, l = childNodes.length; i < l; i++) {
                childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
            }
            return childNodes;
        }

        function ooo(event, treeId, treeNode) {
            alert(" 节点id是：" + treeNode.id + ", 节点文本是：" + treeNode.name);
        }
        //
        $(document).ready(function() {
            $.fn.zTree.init($("#tree"), setting );
        });

    </script>

</head>
<body>
<header class="navbar1">
    <div class="brand">检修班组管理平台</div>
    <ul class="navbar2">
        <li class="flex" onMouseOver="m_over(this)" onMouseOut="m_out(this)">
            <a href="#" class="flex_1">润滑定期工作管理<span class="caret"></span></a>
            <ul class="flex1">
                <li><a href="regularlubricationmanage/engineunitlubricationstandard.jsp">润滑标准</a></li>
                <li><a href="regularlubricationmanage/lubricantrequirement.jsp">润滑剂需求</a></li>
                <li><a href="regularlubricationmanage/lubricationrecord.jsp">润滑记录</a></li>
                <li><a href="regularlubricationmanage/closeloopmanage.jsp">闭环管理</a></li>
                <li><a href="regularlubricationmanage/regularlubricationtask.jsp">定期润滑任务</a></li>
                <li><a href="regularlubricationmanage/unfinishwork.jsp">未完工作清单</a></li>
            </ul>
        </li>
        <li class="flex" onMouseOver="m_over1(this)" onMouseOut="m_out1(this)">
            <a href="#" class="flex_2">日常定期工作管理<span class="caret"></span></a>
            <ul class="flex2">
                <li><a href="dailyregularmanage/standardmanage.jsp">标准管理</a></li>
                <li><a href="dailyregularmanage/sparesrequirement.jsp">备件需求</a></li>
                <li><a href="dailyregularmanage/checkrecord.jsp">检修记录</a></li>
                <li><a href="dailyregularmanage/closeloopmanage.jsp">闭环管理</a></li>
                <li><a href="dailyregularmanage/regularworktask.jsp">定期工作任务</a></li>
                <li><a href="dailyregularmanage/unfinishwork.jsp">未完成工作任务清单</a></li>
            </ul>
        </li>
        <li class="flex" onMouseOver="m_over2(this)" onMouseOut="m_out2(this)">
            <a href="#" class="flex_3">机组启动定检<span class="caret"></span></a>
            <ul class="flex3">
                <li><a href="engineunitstartcheck/standardmanage.jsp">标准管理</a></li>
                <li><a href="engineunitstartcheck/sparesrequirement.jsp">备件需求</a></li>
                <li><a href="engineunitstartcheck/checkrecord.jsp">检修记录</a></li>
                <li><a href="engineunitstartcheck/closeloopmanage.jsp">闭环管理</a></li>
                <li><a href="engineunitstartcheck/regularworktask.jsp">定期工作任务</a></li>
                <li><a href="engineunitstartcheck/unfinishwork.jsp">未完成工作任务清单</a></li>
            </ul>
        </li>
        <li class="flex" onMouseOver="m_over3(this)" onMouseOut="m_out3(this)">
            <a href="#" class="flex_4">机组调停工作定检<span class="caret"></span></a>
            <ul class="flex4">
                <li><a href="engineunitstopcheck/standardmanage.jsp">标准管理</a></li>
                <li><a href="engineunitstopcheck/sparesrequirement.jsp">备件需求</a></li>
                <li><a href="engineunitstopcheck/checkrecord.jsp">检修记录</a></li>
                <li><a href="engineunitstopcheck/closeloopmanage.jsp">闭环管理</a></li>
                <li><a href="engineunitstopcheck/regularworktask.jsp">定期工作任务</a></li>
                <li><a href="engineunitstopcheck/unfinishwork.jsp">未完成工作任务清单</a></li>
            </ul>
        </li>
        <li class="flex" onMouseOver="m_over4(this)" onMouseOut="m_out4(this)">
            <a href="#" class="flex_5">管理类定期<span class="caret"></span></a>
            <ul class="flex5">
                <li><a href="regularmanage/weekplan.jsp">周计划管理</a></li>
                <li><a href="regularmanage/monthplan.jsp">月计划管理</a></li>
                <li><a href="regularmanage/yearplan.jsp">年计划管理</a></li>
            </ul>
        </li>
        <li class="flex" onMouseOver="m_over5(this)" onMouseOut="m_out5(this)">
            <a href="#" class="flex_6">专项定检<span class="caret"></span></a>
            <ul class="flex6">
                <li><a href="specialcheck/standardmanage.jsp">标准管理</a></li>
                <li><a href="specialcheck/sparesrequirement.jsp">备件需求</a></li>
                <li><a href="specialcheck/checkrecord.jsp">检修记录</a></li>
                <li><a href="specialcheck/closeloopmanage.jsp">闭环管理</a></li>
                <li><a href="specialcheck/regularworktask.jsp">定期工作任务</a></li>
                <li><a href="specialcheck/unfinishwork.jsp">未完成工作任务清单</a></li>
            </ul>
        </li>

    </ul>
    <div class="clear"></div>
</header>
    <div>
        <img src="img/hndc.png" style="width: 100%">
    </div>
<div class="container-fluid">

    <div class="footer">
        <nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #16A6E5;height: 20px">
            <div class="navbar-inner navbar-content-center" >
                <p class="text-muted credit" style="padding: 15px;text-align: center">
                    湖南金琅玛节能环保科技有限公司
                </p>
            </div>
        </nav>
    </div>


</div>
</body>
</html>
