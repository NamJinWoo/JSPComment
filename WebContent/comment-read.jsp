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
	<%
		String filePath = request.getServletContext().getRealPath("/saved/");

		File f = new File(filePath);
		File[] files = f.listFiles(); //파일의 리스트를 대입

		for (int i = 0; i < files.length; i++) {
			if (files[i].isFile()) {
				out.println("<a href='comment-item.jsp?name3=" + files[i].getName() + "'" + ">" + files[i].getName()
						+ "</a>");
				out.println("<br/>");
			}
		}
	%>
</body>
</html>