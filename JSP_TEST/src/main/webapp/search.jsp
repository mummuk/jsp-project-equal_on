
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>통합 검색 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/search.css">
</head>
<body data-context-path="${pageContext.request.contextPath}">

    <%@ include file="/common/header.jsp" %>

    <main class="search-container">

        <section class="search-heading">
            <span class="search-eyebrow">EQUAL:ON SEARCH</span>
            <h1>통합 검색</h1>
            <p>원하는 정보와 콘텐츠를 검색해 보세요.</p>
        </section>

        <!-- 검색창 -->
        <form class="search-form"
              action="${pageContext.request.contextPath}/search.jsp"
              method="get">

            <input type="search"
                   id="keyword"
                   name="keyword"
                   placeholder="검색어를 입력하세요."
                   aria-label="검색어">

            <button type="submit">검색</button>
        </form>

        <!-- 검색 결과 안내 -->
        <section class="search-result-section">

            <div class="result-summary">
                <h2 id="result-title">검색 결과</h2>
                <p id="result-count"></p>
            </div>

            <!-- 카테고리 필터 -->
            <nav class="search-filter" aria-label="검색 결과 카테고리">
                <button type="button" class="filter-btn active"
                        data-category="all">전체</button>

                <button type="button" class="filter-btn"
                        data-category="education">교육</button>

                <button type="button" class="filter-btn"
                        data-category="news">뉴스</button>

                <button type="button" class="filter-btn"
                        data-category="expert">전문가</button>
            </nav>

            <!-- 검색 결과 출력 영역 -->
            <div id="search-results" aria-live="polite"></div>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

    <script src="${pageContext.request.contextPath}/js/search.js"
            defer></script>
</body>
</html>
