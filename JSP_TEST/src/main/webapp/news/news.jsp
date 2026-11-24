
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>뉴스 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/news.css">

    <script src="${pageContext.request.contextPath}/js/news.js" defer></script>
</head>
<body>

    <%@ include file="/common/header.jsp" %>

    <main class="news-page">

        <!-- 페이지 소개 -->
        <section class="news-hero">
            <div class="news-hero-content">
                <span class="news-eyebrow">NEWS & ISSUE</span>
                <h1>성평등을 둘러싼<br>다양한 소식을 만나보세요.</h1>
                <p>
                    성평등 정책부터 사회적 이슈, 디지털 성범죄까지
                    <br>
                    우리 사회의 변화를 전합니다.
                </p>
            </div>
        </section>

        <!-- 뉴스 콘텐츠 -->
        <section class="news-section">

            <div class="news-section-heading">
                <div>
                    <span class="section-eyebrow">LATEST NEWS</span>
                    <h2>뉴스 아카이브</h2>
                    <p>다양한 분야의 성평등 관련 소식을 확인해 보세요.</p>
                </div>
            </div>

            <!-- 검색 및 정렬 -->
            <div class="news-toolbar">

                <div class="news-search">
                    <input type="text"
                           id="newsSearch"
                           placeholder="뉴스 제목을 검색해 보세요."
                           aria-label="뉴스 제목 검색">

                    <button type="button" id="searchButton">
                        검색
                    </button>
                </div>

                <select id="sortSelect" aria-label="뉴스 정렬">
                    <option value="latest">최신순</option>
                    <option value="oldest">오래된순</option>
                </select>

            </div>

            <!-- 카테고리 -->
            <div class="news-categories" aria-label="뉴스 카테고리">
                <button class="category-button active"
                        type="button"
                        data-category="전체">전체</button>

                <button class="category-button"
                        type="button"
                        data-category="정책">정책</button>

                <button class="category-button"
                        type="button"
                        data-category="사회">사회</button>

                <button class="category-button"
                        type="button"
                        data-category="디지털 성범죄">디지털 성범죄</button>

                <button class="category-button"
                        type="button"
                        data-category="교육">교육</button>
            </div>

            <!-- 뉴스 개수 -->
            <div class="news-result-info">
                <p>전체 <strong id="newsCount">0</strong>건</p>
            </div>

            <!-- 뉴스 목록이 JavaScript로 출력되는 영역 -->
            <div class="news-grid" id="newsGrid">
            </div>

            <!-- 검색 결과가 없을 때 -->
            <div class="news-empty" id="newsEmpty" hidden>
                <h3>검색 결과가 없습니다.</h3>
                <p>검색어나 카테고리를 다시 확인해 주세요.</p>
                <button type="button" id="resetButton">
                    전체 뉴스 보기
                </button>
            </div>

        </section>

    </main>

    <!-- 뉴스 상세 모달 -->
    <div class="news-modal" id="newsModal" hidden>
        <div class="modal-overlay" id="modalOverlay"></div>

        <div class="modal-content"
             role="dialog"
             aria-modal="true"
             aria-labelledby="modalTitle">

            <button type="button"
                    class="modal-close"
                    id="modalClose"
                    aria-label="상세 보기 닫기">
                &times;
            </button>

            <span class="modal-category" id="modalCategory"></span>

            <h2 id="modalTitle"></h2>

            <p class="modal-date" id="modalDate"></p>

            <div class="modal-divider"></div>

            <p class="modal-body" id="modalBody"></p>

            <button type="button"
                    class="modal-confirm"
                    id="modalConfirm">
                닫기
            </button>

        </div>
    </div>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
