<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고목록</title>
</head>
<body>
	<c:forEach var="report" items="${requestScope.list}">
		<tr>
			<td class="num"><span></span></td>
			<td class="content-title">
				<div class="text-wrap">
					${report.r_content}
				</div>
			</td>
			<td class="user"><span class="user">${report.r_reason}</span></td>
		</tr>
	</c:forEach>
</body>
</html>