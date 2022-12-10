<%--
  Created by IntelliJ IDEA.
  User: parkgyueun
  Date: 2022/12/02
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        #add {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
        }
        #add td, #add th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #add tr:nth-child(even){background-color: #f2f2f2;}
        #add tr:hover {background-color: #ddd;}
        #add th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <title>수업 정보 추가</title>
</head>
<body>
<h1>수업 정보 추가</h1>
<form action="addok" method="post">
    <table id="add">
        <tr><td>Course Title</td><td><input type = "text" name = "titleName" /></td></tr>
        <tr><td>Professor</td><td><input type = "text" name = "professor" /></td></tr>
        <tr><td>Section</td><td><input type = "text" name = "section" /></td></tr>
        <tr><td>Credits</td><td><input type = "text" name = "credits" /></td></tr>
        <tr><td>Type</td><td><input type = "text" name = "type" /></td></tr>
        <tr><td>ClassTime</td><td><input type = "text" name = "classTime" /></td></tr>

        <tr><td>Category</td><td>
            <select name="category">
            <option value="">없음</option>
            <option value="실선">실선</option>
            <option value="실필">실필</option>
            <option value="교필">교필</option>
            <option value="교선">교선</option>
            <option value="공필">공필</option>
            <option value="전필">전필</option>
            <option value="전선">전선</option>
            <option value="부필">부필</option>
            <option value="부선">부선</option>
            <option value="자선">자선</option>
            <option value="전선필">전선필</option>
            <option value="교선필">교선필</option>
            <option value="공선">공선</option>
        </select></td></tr>

        <tr><td>Eng. Rate</td><td>
            <input type = "radio" name = "english" value="0" checked/>0
            <input type = "radio" name = "english" value="100"/>100
        </td></tr>
    </table>
    <button type = "button" onclick="location.href='posts'">수업 목록</button>
    <button type="submit">수업 추가</button>
</form>
</body>
</html>
