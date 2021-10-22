<%@page import="jsp04.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><h1>result</h1><hr>

	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setName(name);
		// dto가지고 있는 값은 디비에 저장
	%>
	<%= dto.getId() %> <%= dto.getPwd() %> <%= dto.getName() %>
	<hr>
	
	<jsp:useBean id="member" class="jsp04.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="member"/>
	<!-- 
	
	<jsp:setProperty property="id" name="dto" value="${param.id }"/>
	<jsp:setProperty property="pwd" name="dto" value="${param.pwd }"/>
	<jsp:setProperty property="name" name="dto" value="${param.name }"/>   
	-->
	태그로 처리 <br>
	${member.id }
	${member.pwd }
	${member.name }
	

</body>
</html>