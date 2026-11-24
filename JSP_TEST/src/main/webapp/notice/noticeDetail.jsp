
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="com.equalon.model.Notice, com.equalon.dao.NoticeDAO" %>

<%!
    private String escapeHtml(String value) {
        if (value == null) return "";

        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>

<%
    // DAO 객체 생성
    NoticeDAO noticeDAO = new NoticeDAO();

    // URL에서 게시글 번호 가져오기
    String idParameter = request.getParameter("id");

    Notice selectedNotice = null;

    try {

        int id = Integer.parseInt(idParameter);

        // 해당 번호의 공지사항 가져오기
        selectedNotice = noticeDAO.getNoticeById(id);

    } catch (NumberFormatException e) {

        selectedNotice = null;

    }
%>
