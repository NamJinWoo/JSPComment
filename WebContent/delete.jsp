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
		String fileName = delete; //���� ���ϸ�
		out.println(fileName);
		String filePath = request.getSession().getServletContext().getRealPath("/saved/"); //������ �����ϴ� �������
		filePath += fileName;
		File f = new File(filePath); // ���� ��ü����
		if (f.exists()) {
			f.delete(); // ������ �����ϸ� ������ �����Ѵ�.
			out.println("���� �����Ͽ����ϴ�.");
		}
	%>
	<form action="comment-read.jsp">
		<input type="submit" value="�ٽ� ��� Ȯ��">
	</form>
</body>
</html>