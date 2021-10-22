<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><h1>chkUser</h1><hr>
<fmt:requestEncoding value="utf-8"/>
<c:set var="user" value="${param.user }"/>
	<c:choose>
		<c:when test="${user == 'user' }">
			<jsp:forward page="userPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		</c:when>
		<c:otherwise>
			<jsp:forward page="adminPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		</c:otherwise>
	</c:choose>

<%-- 
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String user = request.getParameter("user");
		if(user.equals("user")){%>
			<jsp:forward page="userPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		<% }else{%>
			<jsp:forward page="adminPage.jsp">
				<jsp:param value="추가로 넘어가는 값" name="n"/>
			</jsp:forward>
		<% }%>
--%>	



</body>
</html>