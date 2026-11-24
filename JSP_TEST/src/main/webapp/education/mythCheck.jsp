
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>통념 점검 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/mythCheck.css">

    <script src="${pageContext.request.contextPath}/js/mythCheck.js"
            defer></script>
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="myth-page">

        <!-- 페이지 소개 -->
        <section class="myth-intro">
            <div class="myth-container">

                <span class="myth-eyebrow">EQUAL:ON MYTH CHECK</span>

                <h1>잘못된 통념 바로잡기</h1>

                <p>
                    성폭력에 관한 잘못된 생각을 점검하고
                    올바른 인식을 함께 만들어 봅니다.
                </p>

            </div>
        </section>


        <!-- 퀴즈 영역 -->
        <section class="myth-quiz-section">

            <div class="myth-container">

                <div class="myth-quiz-card">

                    <!-- 진행 상황 -->
                    <div class="myth-progress-area">

                        <div class="myth-progress-info">
                            <span id="question-number">QUESTION 1</span>
                            <span id="progress-text">1 / 5</span>
                        </div>

                        <div class="myth-progress-bar">
                            <div id="progress-fill"></div>
                        </div>

                    </div>


                    <!-- 문제 영역 -->
                    <div id="quiz-content">

                        <span class="myth-category">
                            성폭력에 관한 통념
                        </span>

                        <h2 id="question-text">
                            문제를 불러오는 중입니다.
                        </h2>

                        <p class="myth-instruction">
                            다음 문장이 올바른 설명인지 선택해 보세요.
                        </p>


                        <!-- O / X 선택 -->
                        <div class="myth-answer-buttons">

                            <button type="button"
                                    class="answer-button answer-o"
                                    data-answer="true">
                                O
                            </button>

                            <button type="button"
                                    class="answer-button answer-x"
                                    data-answer="false">
                                X
                            </button>

                        </div>


                        <!-- 정답 및 해설 -->
                        <div id="feedback-area"
                             class="myth-feedback"
                             hidden>

                            <h3 id="feedback-title"></h3>

                            <p id="feedback-explanation"></p>

                        </div>


                        <!-- 다음 문제 -->
                        <div class="myth-next-area">

                            <button type="button"
                                    id="next-button"
                                    disabled>
                                다음 문제
                            </button>

                        </div>

                    </div>


                    <!-- 결과 영역 -->
                    <div id="result-area" hidden>

                        <span class="myth-category">
                            QUIZ RESULT
                        </span>

                        <h2>통념 점검 완료!</h2>

                        <p class="myth-result-description">
                            모든 문제를 확인했습니다.
                        </p>

                        <div class="myth-score">
                            <span id="final-score">0</span>
                            <span>/ 5</span>
                        </div>

                        <p id="result-message"></p>

                        <button type="button"
                                id="restart-button">
                            다시 풀기
                        </button>

                    </div>

                </div>

            </div>

        </section>


        <!-- 안내 영역 -->
        <section class="myth-notice">

            <div class="myth-container">

                <p>
                    이 퀴즈는 성폭력에 관한 올바른 이해를 돕기 위한
                    교육용 콘텐츠입니다.
                </p>

            </div>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
