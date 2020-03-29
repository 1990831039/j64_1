<%--
  Created by IntelliJ IDEA.
  User: 蔡吉东
  Date: 2019/10/15
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="add.do" method="post">
    姓名: <input type="text" name="name"> <br>
    性别: <select name="sex" id="ss">
            <option value="男">男</option>
            <option value="女">女</option>
          </select> <br>
    年级: <select name="grade" id="gg">
            <option value="1">S1</option>
            <option value="2">S2</option>
            <option value="3">Y2</option>
          </select> <br>
    出生日期: <input type="date" id="bb" name="bir"> <br>
    分数: <input type="number" name="score"> <br>
    <input type="submit" id="su" value="新增">
</form>
<script src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
</script>
</body>
</html>
