
<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@page import="com.cafe24.gusetbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	GuestBookDao dao = new GuestBookDao();
	dao.insert(vo);
	
	response.sendRedirect("/guestbook");
	
%>





