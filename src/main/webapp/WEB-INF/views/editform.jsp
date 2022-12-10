<%--
  Created by IntelliJ IDEA.
  User: parkgyueun
  Date: 2022/12/02
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        #edit {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
        }
        #edit td, #edit th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #edit tr:nth-child(even){background-color: #f2f2f2;}
        #edit tr:hover {background-color: #ddd;}
        #edit th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <title>수업 정보 수정</title>
</head>
<body>
<h1>수업 정보 수정</h1>
<form:form modelAttribute="boardVO" method = "POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr>
            <td>Course Title</td>
            <td><form:input path = "titleName" /></td>
        </tr>
        <tr>
            <td>Professor</td>
            <td><form:input path = "professor" /></td>
        </tr>
        <tr>
            <td>Section</td>
            <td><form:input path = "section" /></td>
        </tr>
        <tr>
            <td>Credits</td>
            <td><form:input path = "credits" /></td>
        </tr>
        <tr>
            <td>Type</td>
            <td><form:input path = "type" /></td>
        </tr>
        <tr>
            <td>ClassTime</td>
            <td><form:input path = "classTime" /></td>
        </tr>
        <tr><td>Category</td>
            <td><form:select path="category">
                <form:option value="실선" label="실선"/>
                <form:option value="실필" label="실필"/>
                <form:option value="교필" label="교필"/>
                <form:option value="교선" label="교선"/>
                <form:option value="공필" label="공필"/>
                <form:option value="전필" label="전필"/>
                <form:option value="전선" label="전선"/>
                <form:option value="부필" label="부필"/>
                <form:option value="부선" label="부선"/>
                <form:option value="자선" label="자선"/>
                <form:option value="전선필" label="전선필"/>
                <form:option value="교선필" label="교선필"/>
                <form:option value="공선" label="공선"/>
            </form:select></td></tr>
        <tr><td>Eng. Rate</td>
            <td><form:radiobutton path="english" value="0" label="0" />
                <form:radiobutton path="english" value="100" label="100" /></td></tr>
    </table>
    <input type="submit" value="수정" />
    <input type="button" value="취소" onclick="history.back()"/>
</form:form>
</body>
</html>