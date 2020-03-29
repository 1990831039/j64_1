<%--
  Created by IntelliJ IDEA.
  User: 蔡吉东
  Date: 2019/10/15
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="xgai.do" method="post">
            <input type="hidden" id="idd" name="id" value="${map.id}">
            姓名: <input type="text" name="name" value="${map.name}"> <br>
            性别:   <input type="radio" <c:if test="${map.sex eq '男' }">checked</c:if> name="sex" value="男"/>男
                    <input type="radio" <c:if test="${map.sex eq '女' }">checked</c:if> name="sex" value="女"/>女
            <br>
            年级: <select name="grade" id="grade">
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="Y2">Y2</option>
                </select> <br>
            出生日期: <input type="date" id="bb" name="bir" value="${map.bir}"> <br>
            分数: <input type="number" name="score" value="${map.score}"> <br>
            <input type="submit" id="su" value="修改">
    </form>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script>
    var grade = "${map.gradename}";
    $("#grade").val(grade);
</script>
</html>
