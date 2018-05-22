<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%
			
			String name1 = request.getParameter("name3");
			String filePath = request.getSession().getServletContext().getRealPath("/saved/")+name1;
			BufferedReader reader = new BufferedReader (new FileReader(filePath));
			out.println("<h1> 파일 이름: "+name1+"</h1>");
			String str = reader.readLine();	
			reader.close();
			out.print(str);
		%>
		<form action="comment-read.jsp">
			<input type="submit" value="다시 목록 확인">
		</form>
			<input type="submit" value="삭제" onClick="window.location.href='delete.jsp?deletetxt=<%=name1%>'">
		
	</div>
</body>
</html>