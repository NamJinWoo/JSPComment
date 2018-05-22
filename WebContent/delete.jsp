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
		String delete = request.getParameter("deletetxt");
		//out.print(delete);
		String fileName = delete; //지울 파일명
		out.println(fileName);
		String filePath = request.getSession().getServletContext().getRealPath("/saved/"); //파일이 존재하는 실제경로
		filePath += fileName;
		File f = new File(filePath); // 파일 객체생성
		if (f.exists()) {
			f.delete(); // 파일이 존재하면 파일을 삭제한다.
			out.println("삭제 성공하였습니다.");
		}
	%>
	<form action="comment-read.jsp">
		<input type="submit" value="다시 목록 확인">
	</form>
</body>
</html>