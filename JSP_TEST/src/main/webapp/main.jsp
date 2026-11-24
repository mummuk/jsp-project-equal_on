
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EQUAL:ON | 성평등과 안전을 위한 공간</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/main.css">
</head>

<body>
    <%@ include file="/common/header.jsp" %>

    <main class="main-container">

        <!-- 1. 대표 뉴스 배너 -->
        <section class="main-banner">
            <div class="banner-content">
                <span class="section-label">EQUAL:ON ISSUE</span>

                <span class="banner-category">주요 이슈 · 샘플 콘텐츠</span>

                <h1>
                    우리 사회의 성평등,<br>
                    함께 생각하고 변화시키기
                </h1>

                <p>
                    성평등과 안전에 관한 다양한 이슈를 살펴보고
                    더 나은 사회를 위한 정보를 확인해 보세요.
                </p>

                <a href="${pageContext.request.contextPath}/news/news.jsp"
                   class="banner-button">
                    관련 콘텐츠 살펴보기 →
                </a>
            </div>

            <div class="banner-visual">
                <div class="banner-circle">
                    <span>EQUAL</span>
                    <strong>ON</strong>
                </div>
            </div>
        </section>


        <!-- 2. 사이트 소개 -->
        <section class="intro-section">
            <span class="section-label">ABOUT EQUAL:ON</span>

            <h2>
                서로의 차이를 이해하고,<br>
                함께 만드는 안전한 사회
            </h2>

            <p>
                EQUAL:ON은 성평등에 대한 올바른 이해를 돕고,
                성폭력 예방과 안전에 관한 정보를 제공하기 위한
                정보 공유 공간입니다.
            </p>
        </section>


        <!-- 3. 주요 콘텐츠 미리보기 -->
        <section class="content-section">
            <div class="section-heading">
                <div>
                    <span class="section-label">EXPLORE</span>
                    <h2>함께 알아보는 주요 콘텐츠</h2>
                    <p>다양한 콘텐츠를 통해 이해의 폭을 넓혀 보세요.</p>
                </div>
            </div>

            <div class="content-grid">

                <!-- 통념 점검 -->
                <article class="content-card myth-card">
                    <span class="card-category">THINK</span>
                    <h3>성평등에 대한<br>오해와 진실</h3>

                    <p>
                        우리가 당연하게 생각했던 것들,
                        정말 사실일까요?
                    </p>

<div class="preview-question">
    <span>OX QUESTION PREVIEW</span>

    <strong>
        성평등은 특정 성별만을 위한 개념이다?
    </strong>


</div>

                    <a href="${pageContext.request.contextPath}/education/mythCheck.jsp"
                       class="card-link">
                        통념 점검하기 →
                    </a>
                </article>


                <!-- 예방 교육 -->
                <article class="content-card prevention-card">
                    <span class="card-category">LEARN</span>
                    <h3>일상 속에서 실천하는<br>예방과 안전</h3>

                    <p>
                        작은 관심과 실천이 안전한 환경을
                        만들어 갈 수 있습니다.
                    </p>

                    <ul class="preview-list">
                        <li>일상생활 속 예방 수칙</li>
                        <li>디지털 환경에서의 안전</li>
                        <li>피해 발생 시 대응 방법</li>
                    </ul>

                    <a href="${pageContext.request.contextPath}/education/prevention.jsp"
                       class="card-link">
                        예방 교육 살펴보기 →
                    </a>
                </article>

            </div>
        </section>


        <!-- 4. 뉴스 및 전문가 미리보기 -->
        <section class="quick-section">

            <div class="quick-card news-preview">
                <div>
                    <span class="section-label">NEWS</span>
                    <h2>사회 속 다양한<br>성평등 이슈</h2>
                    <p>
                        정책과 사회적 변화,
                        디지털 성범죄 관련 소식까지.
                        다양한 이슈를 확인해 보세요.
                    </p>
                </div>

                <a href="${pageContext.request.contextPath}/news/news.jsp"
                   class="card-link">
                    관련 뉴스 보기 →
                </a>
            </div>


            <div class="quick-card expert-preview">
                <div>
                    <span class="section-label">EXPERT</span>
                    <h2>도움이 필요할 때,<br>전문적인 정보와 지원</h2>
                    <p>
                        법률과 심리 등 다양한 분야의
                        전문가 정보와 상담 안내를 확인해 보세요.
                    </p>
                </div>

                <a href="${pageContext.request.contextPath}/expert/expert.jsp"
                   class="card-link">
                    전문가 정보 보기 →
                </a>
            </div>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

    <script src="${pageContext.request.contextPath}/js/main.js"
            defer></script>
</body>
</html>
