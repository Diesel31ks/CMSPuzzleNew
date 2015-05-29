<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<%@page import="com.ckeditor.CKEditorConfig"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Puzzle CMS | Article</title>
    <style>
        button {
            background: #E6E6FA;
            border: 1px solid #7a7b7e;
            width: 120px;
            height: 30px;
            border-radius: 5px;
        }
        header {
            display: block;
            height: 50px;
            background: #eee5de;
        }
        .header-cms {
            background: #eee5de
        height: 50px;
            text-align: start;
        }
    </style>
</head>

<body bgcolor="#FFFFF0">

<header>
    <div class="header-cms">
        <H1>Editing article</H1>
    </div>
</header>

<br/>Name*: <input type="text" name="name" value="" size=40 maxlength=100 enctype="multipart/form-data"/><br/>
<br/>Title*: <input type="text" name="title" value="" size=40 maxlength=100/><br/>

<div align="center">
    <form action="assets/sample_posteddata.jsp" method="post">
        <p>
            <label for="editor1">
                Editor 1:</label>
            <textarea cols="80" id="editor1" name="editor1" rows="10"></textarea>
        </p>
        <p>
            <%
                String value = "My first <strong>CKEditor</strong> Java tag";
                Map<String, String> attr = new HashMap<String, String>();
                attr.put("rows", "8");
                attr.put("cols", "50");
                CKEditorConfig settings = new CKEditorConfig();
                settings.addConfigValue("width", "500");
                settings.addConfigValue("toolbar", "Basic");
            %>
            <ckeditor:editor textareaAttributes="<%=attr %>"
                             basePath="../ckeditor/" config="<%=settings %>"
                             editor="editor1" value="<%= value %>"/>
            <input type="submit" value="Submit"/>
        </p>
    </form>
</div>

<br/>Keywords*: <input type="text" name="keywords" value="" size=100 maxlength=100/><br/>
<br/>Description*: <input type="text" name="description" value="" size=100 maxlength=255/><br/>
<br/>

<div align="left">
    <form action="/validateArticle" method="get">
        <button><b>Submit</b></button>
    </form>
</div>

<div align="right">
    <form action="Tabs.jsp" method="get">
        <button><b>Close</b></button>
    </form>
</div>

</body>
</html>
