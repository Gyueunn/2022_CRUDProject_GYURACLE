<%--
  Created by IntelliJ IDEA.
  User: parkgyueun
  Date: 2022/12/02
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <style>
        #posts {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #posts td, #posts th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #posts tr:nth-child(even){background-color: #f2f2f2;}
        #posts tr:hover {background-color: #ddd;}
        #posts th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href = 'deleteok/'+ id;
        }
    </script>
</head>
<body>

<h1>GYURACLE이라네</h1>
<table id = "posts" width="90%">
    <tr>
        <th>Index</th>
        <th>TitleName</th>
        <th>Professor</th>
        <th>Section</th>
        <th>Credits</th>
        <th>Type</th>
        <th>ClassTime</th>
        <th>Category</th>
        <th>Eng. Rate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${posts}" var="u">
        <tr>
        <td>${u.seq}</td>
        <td>${u.titleName}</td>
        <td>${u.professor}</td>
        <td>${u.section}</td>
        <td>${u.credits}</td>
        <td>${u.type}</td>
        <td>${u.classTime}</td>
        <td>${u.category}</td>
        <td>${u.english}</td>
        <td><a href="editform/${u.seq}">수정</a></td>
        <td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type = "button" onclick="location.href='add'">수업 추가</button>
<button type="logout" onclick="location.href='../login/logout'">Logout</button>
</body>
</html>
