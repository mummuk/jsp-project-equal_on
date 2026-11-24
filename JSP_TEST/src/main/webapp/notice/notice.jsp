
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="java.util.List, java.util.ArrayList, com.equalon.model.Notice, com.equalon.dao.NoticeDAO" %>

<%!
    // HTML 특수문자 처리
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

    // 공지사항 목록 가져오기
    List<Notice> noticeList = noticeDAO.getNoticeList();
%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>공지사항 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/notice.css">
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="notice-page">

        <!-- 페이지 소개 -->
        <section class="notice-intro">
            <div class="notice-container">

                <span class="notice-eyebrow">EQUAL:ON NOTICE</span>

                <h1>공지사항</h1>

                <p>
                    EQUAL:ON의 새로운 소식과 주요 안내사항을 확인하세요.
                </p>

            </div>
        </section>


        <!-- 공지사항 목록 -->
        <section class="notice-section">

            <div class="notice-container">

                <div class="notice-header">

                    <h2>전체 공지사항</h2>

                    <span class="notice-count">
                        총 <strong><%= noticeList.size() %></strong>개의 게시글
                    </span>

                </div>


                <!-- 검색 영역 -->
                <form class="notice-search"
                      action="notice.jsp"
                      method="get">

                    <select name="searchType">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>

                    <input type="text"
                           name="keyword"
                           placeholder="검색어를 입력하세요">

                    <button type="submit">검색</button>

                </form>


                <!-- 공지사항 테이블 -->
                <div class="notice-table-wrapper">

                    <table class="notice-table">

                        <thead>
                            <tr>
                                <th class="notice-number">번호</th>
                                <th>제목</th>
                                <th class="notice-date">작성일</th>
                                <th class="notice-views">조회수</th>
                            </tr>
                        </thead>

                        <tbody>

                            <% if (noticeList.isEmpty()) { %>

                                <tr>
                                    <td colspan="4" class="notice-empty">
                                        등록된 공지사항이 없습니다.
                                    </td>
                                </tr>

                            <% } else { %>

                                <% for (Notice notice : noticeList) { %>

                                    <tr>

                                        <td>
                                            <%= notice.getId() %>
                                        </td>

                                        <td class="notice-title">
                                            <a href="noticeDetail.jsp?id=<%= notice.getId() %>">
                                                <%= escapeHtml(notice.getTitle()) %>
                                            </a>
                                        </td>

                                        <td>
                                            <%= escapeHtml(notice.getDate()) %>
                                        </td>

                                        <td>
                                            <%= notice.getViews() %>
                                        </td>

                                    </tr>

                                <% } %>

                            <% } %>

                        </tbody>

                    </table>

                </div>


                <!-- 페이지네이션 -->
                <nav class="notice-pagination"
                     aria-label="공지사항 페이지">

                    <button type="button" disabled>이전</button>
                    <button type="button" class="active">1</button>
                    <button type="button" disabled>다음</button>

                </nav>

            </div>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
