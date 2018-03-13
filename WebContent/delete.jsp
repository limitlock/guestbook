<%@page import="com.cafe24.guestbook.dao.GuestBookDao"%>
<%@page import="com.cafe24.gusetbook.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");

	GuestBookVo vo = new GuestBookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);

	GuestBookDao dao = new GuestBookDao();
	dao.delete(vo);

	response.sendRedirect("/guestbook");
%>
<!--  redirect 응답 -->