<%--
  Created by IntelliJ IDEA.
  User: 蔡吉东
  Date: 2019/10/11
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        #d{
            margin-top: 10px;
        }
        #syy{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid #2D93CA;
            color:#fff;
            background:#2D93CA;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #syy:hover{
            color:#2D93CA;
            background:#fff;
            text-decoration: none;
        }
        #xyy{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid #2D93CA;
            color:white;
            background:#2D93CA;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #xyy:hover{
            color:#2D93CA;
            background:#fff;
            text-decoration: none;
        }
        #xz{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid royalblue;
            color:white;
            background:royalblue;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #xz:hover{
            color:royalblue;
            background:#fff;
            text-decoration: none;
        }
        #sele{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid darkblue;
            color:white;
            background:darkblue;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #sele:hover{
            color:darkblue;
            background:#fff;
            text-decoration: none;
        }
        #qd{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid orchid;
            color:white;
            background:orchid;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #qd:hover{
            color:orchid;
            background:#fff;
            text-decoration: none;
        }
        .sc{
            color:black;
            text-decoration: none;
        }
        .ss{
            display:inline-block; // display:block;
            width:100px;
            height:30px;
            border:1px solid #3232cd;
            color:white;
            background:#3232cd;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        .ss:hover{
                 color:#3232cd;
                 background:#fff;
                 text-decoration: none;
             }
        #schu{
            display:inline-block; // display:block;
            width:70px;
            height:30px;
            border:1px solid red;
            color:white;
            background:red;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #schu:hover{
            color:red;
            background:#fff;
            text-decoration: none;
        }
        #xiugai{
            display:inline-block; // display:block;
            width:70px;
            height:30px;
            border:1px solid #ff6ec7;
            color:white;
            background:#ff6ec7;
            border-radius:3px;
            text-align:center;
            line-height:30px;
            text-decoration: none;
        }
        #xiugai:hover{
            color:#ff6ec7;
            background:#fff;
            text-decoration: none;
        }

    </style>
</head>
<body>
    <div id="cx" align="center">
        <a href="add.jsp" id="xz">新增</a>
        <form action="load.do">
            姓名: <input type="text" name="name" id="a">
            性别: <select name="sex" id="ss">
                    <option value="全部">全部</option>
                    <option value="男">男</option>
                    <option value="女">女</option>
                  </select>
            <input type="button" id="qk" value="清空">
            <a id="sele" href="#" onclick="location.href='load.do?name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()+'&ccxx=cx'" >查询</a>
        </form>
    </div>
    <table width="60%" border="1" align="center">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年级</th>
            <th>出生日期</th>
            <th>成绩</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${requestScope.list}" var="k" varStatus="st">
            <tr align="center">
                <td>${k.id}</td>
                <td>${k.name}</td>
                <td>${k.sex}</td>
                <td>${k.gradename}</td>
                <td>${k.bir}</td>
                <td>${k.score}</td>
                <td>
                    <a href="del/${k.id}.do" onclick="return confirm('确定要删除吗？')" id="schu" class="sc">删除</a>
                    <a href="upd/${k.id}.do"  class="sc" id="xiugai">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
   <div id="d" align="center">
       <a href="#" class="ss" onclick="location.href='load.do?page=${currentPage-1}&name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()+'&shoye=shoye'" >首页</a>
       <a <c:if test="${currentPage>1 }"> onclick="location.href='load.do?page=${currentPage-1}&name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()" </c:if> href="#" id="syy">上一页</a>
      <a>${requestScope.currentPage}</a>/<a>${requestScope.pageCount}</a>
      <a <c:if test="${currentPage<pageCount}">  onclick="location.href='load.do?page=${currentPage+1}&name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()" </c:if> href="#" id="xyy">下一页</a>
       <a href="#" class="ss" onclick="location.href='load.do?page=${currentPage-1}&name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()+'&wye=wye'" >尾页</a>
        请选择一页多少条:   <select name="yeshu" id="aa">
                                <option value="2">2</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="20">20</option>
                                <option value="50">50</option>
                            </select>
       <a onclick="location.href='load.do?name='+$('#a').val()+'&sex='+$('#ss').val()+'&ys='+$('#aa').val()+'&ys='+$('#aa').val()+'&ccxx=cx'" href="#" id="qd" >确定</a>
   </div>
    <script src="js/jquery-1.12.4.js"></script>
    <script type="text/javascript">
        /*$(function(){
            $("tr:odd").attr("bgColor","#32cd99");
            $("tr:even").attr("bgColor","#3299cc");
        })*/
        $("#a").val("${name}");
        $("#ss").val("${sex}");
        $("#aa").val("${ye}");
        $("#sele").click(function () {
            var name = $("#a").val();
            var sex = $("#ss").val();


        })
        $("#qk").click(function () {
            $("#a").val("");
            $("#ss").val("全部");
        })
    </script>
</body>
</html>
