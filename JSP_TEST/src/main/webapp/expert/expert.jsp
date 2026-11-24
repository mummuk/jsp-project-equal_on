
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>전문가 정보 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/expert.css">

    <script src="${pageContext.request.contextPath}/js/expert.js" defer></script>
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="expert-page">

        <!-- 페이지 소개 -->
        <section class="expert-hero">
            <div class="expert-hero-content">
                <span class="expert-eyebrow">EXPERT INFORMATION</span>

                <h1>
                    전문적인 도움이 필요할 때,<br>
                    함께하는 전문가를 만나보세요.
                </h1>

                <p>
                    성폭력 및 성범죄 관련 문제에 도움을 줄 수 있는
                    <br>
                    다양한 분야의 전문가 정보를 제공합니다.
                </p>
            </div>
        </section>


        <!-- 전문가 목록 -->
        <section class="expert-section">

            <div class="expert-heading">
                <div>
                    <span class="section-eyebrow">EXPERT DIRECTORY</span>
                    <h2>전문가 정보</h2>
                    <p>관심 있는 분야의 전문가를 찾아보세요.</p>
                </div>
            </div>


            <!-- 검색 -->
            <div class="expert-toolbar">

                <div class="expert-search">
                    <input type="text"
                           id="expertSearch"
                           placeholder="전문가 이름 또는 전문 분야 검색"
                           aria-label="전문가 검색">

                    <button type="button" id="searchButton">
                        검색
                    </button>
                </div>

            </div>


            <!-- 분야별 카테고리 -->
            <div class="expert-categories">

                <button type="button"
                        class="expert-category active"
                        data-category="전체">
                    전체
                </button>

                <button type="button"
                        class="expert-category"
                        data-category="법률">
                    법률
                </button>

                <button type="button"
                        class="expert-category"
                        data-category="심리">
                    심리 상담
                </button>

                <button type="button"
                        class="expert-category"
                        data-category="의료">
                    의료
                </button>

                <button type="button"
                        class="expert-category"
                        data-category="지원">
                    피해 지원
                </button>

            </div>


            <!-- 결과 개수 -->
            <div class="expert-result-info">
                전체 <strong id="expertCount">0</strong>명
            </div>


            <!-- 전문가 카드 출력 영역 -->
            <div class="expert-grid" id="expertGrid">
            </div>


            <!-- 검색 결과 없음 -->
            <div class="expert-empty" id="expertEmpty" hidden>
                <h3>검색 결과가 없습니다.</h3>
                <p>검색어 또는 분야를 다시 확인해 주세요.</p>

                <button type="button" id="resetButton">
                    전체 전문가 보기
                </button>
            </div>

        </section>


        <!-- 상담 안내 -->
        <section class="expert-consult">
            <div>
                <span>CONSULTATION</span>
                <h2>전문적인 상담이 필요하신가요?</h2>
                <p>
                    상담 신청 페이지에서 필요한 도움을 요청하는
                    절차를 확인할 수 있습니다.
                </p>
            </div>

            <a href="${pageContext.request.contextPath}/expert/consultation.jsp"
               class="consult-button">
                상담 신청 안내
            </a>
        </section>

    </main>


    <!-- 전문가 상세 모달 -->
    <div class="expert-modal" id="expertModal" hidden>

        <div class="expert-modal-overlay" id="modalOverlay"></div>

        <div class="expert-modal-content"
             role="dialog"
             aria-modal="true"
             aria-labelledby="modalName">

            <button type="button"
                    class="expert-modal-close"
                    id="modalClose"
                    aria-label="닫기">
                &times;
            </button>

            <div class="expert-modal-profile">
                <div class="expert-modal-avatar" id="modalAvatar">
                    E
                </div>

                <div>
                    <span id="modalCategory"></span>
                    <h2 id="modalName"></h2>
                    <p id="modalPosition"></p>
                </div>
            </div>

            <div class="expert-modal-divider"></div>

            <h3>전문 분야</h3>
            <p id="modalField"></p>

            <h3>소개</h3>
            <p id="modalDescription"></p>

            <button type="button"
                    class="expert-modal-confirm"
                    id="modalConfirm">
                닫기
            </button>

        </div>
    </div>


    <%@ include file="/common/footer.jsp" %>

</body>
</html>
