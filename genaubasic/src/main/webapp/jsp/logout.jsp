<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // セッションを無効にする
    session.invalidate();

    // index.jsp にリダイレクト
    response.sendRedirect("/genaubasic/jsp/index.jsp");
%>
