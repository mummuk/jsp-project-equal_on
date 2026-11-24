
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<header class="site-header">

    <div class="header-inner">

        <!-- 로고 -->
        <a class="brand"
           href="${pageContext.request.contextPath}/main.jsp">

            <span class="brand-mark">E</span>

            <span class="brand-text">
                <strong>EQUAL:ON</strong>
                <small>성평등 · 예방 · 안전</small>
            </span>

        </a>

        <!-- 모바일 메뉴 버튼 -->
        <button class="menu-toggle"
                type="button"
                aria-label="메뉴 열기"
                aria-expanded="false">
            ☰
        </button>

        <!-- 상단 내비게이션 -->
        <nav class="main-nav" aria-label="주요 메뉴">

            <a href="${pageContext.request.contextPath}/main.jsp">
                홈
            </a>

            <a href="${pageContext.request.contextPath}/education/education.jsp">
                예방 교육
            </a>

            <a href="${pageContext.request.contextPath}/education/mythCheck.jsp">
                통념 점검
            </a>

            <a href="${pageContext.request.contextPath}/news/news.jsp">
                관련 뉴스
            </a>

            <a href="${pageContext.request.contextPath}/expert/expert.jsp">
                전문가 정보
            </a>

            <!-- 통합 검색 -->
            <form class="header-search"
                  action="${pageContext.request.contextPath}/search.jsp"
                  method="get">

                <input type="search"
                       name="keyword"
                       placeholder="검색어 입력"
                       aria-label="통합 검색어">

                <button type="submit">검색</button>

            </form>

        </nav>

    </div>

</header>
