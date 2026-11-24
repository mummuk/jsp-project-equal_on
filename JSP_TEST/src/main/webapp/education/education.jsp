
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>예방 교육 | EQUAL:ON</title>

    <!-- 공통 CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <!-- 예방 교육 CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/education.css">
</head>

<body>

    <!-- 공통 헤더 -->
    <%@ include file="/common/header.jsp" %>


    <main class="education-page">

        <!-- 페이지 소개 영역 -->
        <section class="education-intro">

            <div class="education-container">

                <span class="education-eyebrow">
                    EQUAL:ON EDUCATION
                </span>

                <h1>
                    예방 교육
                </h1>

                <p>
                    서로를 존중하는 사회를 위한 첫걸음,
                    올바른 이해와 예방에서 시작됩니다.
                </p>

            </div>

        </section>


        <!-- 교육 안내 영역 -->
        <section class="education-guide">

            <div class="education-container">

                <div class="section-heading">

                    <span>LEARN & UNDERSTAND</span>

                    <h2>
                        무엇을 배울 수 있을까요?
                    </h2>

                    <p>
                        다양한 교육 자료를 통해 성폭력에 대한 이해를 높이고
                        안전한 일상을 만들어 보세요.
                    </p>

                </div>


                <!-- 교육 카드 영역 -->
                <div class="education-card-grid">


                    <!-- 카드 1 : 개념 및 유형 -->
                    <article class="education-card">

                        <div class="education-card-icon">
                            <span>01</span>
                        </div>

                        <div class="education-card-content">

                            <span class="card-category">
                                UNDERSTANDING
                            </span>

                            <h3>
                                성폭력의 이해
                            </h3>

                            <p>
                                성폭력의 개념과 다양한 유형을 살펴보고
                                올바른 이해를 높입니다.
                            </p>

                            <a href="mythCheck.jsp"
                               class="education-card-link">
                                자세히 알아보기 →
                            </a>

                        </div>

                    </article>


                    <!-- 카드 2 : 예방 방법 -->
                    <article class="education-card">

                        <div class="education-card-icon">
                            <span>02</span>
                        </div>

                        <div class="education-card-content">

                            <span class="card-category">
                                PREVENTION
                            </span>

                            <h3>
                                예방과 실천
                            </h3>

                            <p>
                                일상에서 실천할 수 있는 예방 방법과
                                서로를 존중하는 태도를 알아봅니다.
                            </p>

                            <a href="prevention.jsp"
                               class="education-card-link">
                                자세히 알아보기 →
                            </a>

                        </div>

                    </article>


                    <!-- 카드 3 : FAQ -->
                    <article class="education-card">

                        <div class="education-card-icon">
                            <span>03</span>
                        </div>

                        <div class="education-card-content">

                            <span class="card-category">
                                FAQ
                            </span>

                            <h3>
                                자주 묻는 질문
                            </h3>

                            <p>
                                 다양한 상황에서의 올바른 대처 방법과
        						 필요한 지원 정보를 확인해 보세요.
                            </p>

                            <a href="faq.jsp"
                               class="education-card-link">
                                FAQ 확인하기 →
                            </a>

                        </div>

                    </article>


                </div>

            </div>

        </section>


        <!-- 하단 안내 영역 -->
        <section class="education-message">

            <div class="education-container">

                <div class="education-message-content">

                    <span>TOGETHER, EQUAL:ON</span>

                    <h2>
                        서로의 차이를 존중하고<br>
                        안전한 일상을 함께 만들어 갑니다.
                    </h2>

                    <p>
                        올바른 지식과 작은 실천이
                        더 나은 사회를 만드는 시작입니다.
                    </p>

                </div>

            </div>

        </section>

    </main>


    <!-- 공통 푸터 -->
    <%@ include file="/common/footer.jsp" %>

</body>
</html>
