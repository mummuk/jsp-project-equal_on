
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>FAQ 및 상황별 대처 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/faq.css">

    <script src="${pageContext.request.contextPath}/js/faq.js"
            defer></script>
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="faq-page">

        <!-- 1. 페이지 소개 -->
        <section class="faq-intro">

            <div class="faq-container">

                <span class="faq-eyebrow">
                    EQUAL:ON FAQ
                </span>

                <h1>궁금한 상황, 올바른 대처 방법을 알아보세요.</h1>

                <p>
                    성폭력 및 디지털 성범죄와 관련된 다양한 상황에 대해
                    올바르게 이해하고 대처할 수 있도록 안내합니다.
                </p>

            </div>

        </section>


        <!-- 2. FAQ 영역 -->
        <section class="faq-content">

            <div class="faq-container">

                <div class="faq-heading">

                    <h2>자주 묻는 질문</h2>

                    <p>
                        궁금한 주제를 선택하고 질문을 클릭해 보세요.
                    </p>

                </div>


                <!-- 카테고리 탭 -->
                <div class="faq-categories">

                    <button type="button"
                            class="category-button active"
                            data-category="all">
                        전체
                    </button>

                    <button type="button"
                            class="category-button"
                            data-category="victim">
                        피해 발생 시
                    </button>

                    <button type="button"
                            class="category-button"
                            data-category="support">
                        주변인의 대처
                    </button>

                    <button type="button"
                            class="category-button"
                            data-category="digital">
                        디지털 성범죄
                    </button>

                    <button type="button"
                            class="category-button"
                            data-category="report">
                        신고 및 상담
                    </button>

                </div>


                <!-- 질문 목록 -->
                <div class="faq-list">


                    <!-- 피해 발생 시 -->
                    <article class="faq-item"
                             data-category="victim">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                성폭력 피해를 입었다면 가장 먼저 무엇을 해야 하나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        무엇보다 자신의 안전을 우선으로 생각해야 합니다.
                                        위험한 상황이라면 안전한 장소로 이동하고,
                                        긴급한 위험이 있다면 112에 신고할 수 있습니다.
                                    </p>

                                    <p>
                                        이후 신뢰할 수 있는 사람이나 전문 지원 기관에
                                        도움을 요청할 수 있습니다. 피해 사실을 입증해야 한다는
                                        부담 때문에 혼자 해결하려 하지 않아도 됩니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <article class="faq-item"
                             data-category="victim">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                피해 당시 저항하지 못했어도 도움을 받을 수 있나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        네. 피해 당시 저항하지 못했다는 이유로
                                        피해 사실이 부정되는 것은 아닙니다.
                                    </p>

                                    <p>
                                        두려움이나 위협 등으로 인해 적극적으로 대응하지
                                        못하는 상황도 있을 수 있습니다.
                                        피해자의 저항 여부만으로 피해를 판단해서는 안 됩니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <!-- 주변인의 대처 -->
                    <article class="faq-item"
                             data-category="support">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                친구가 성폭력 피해 사실을 털어놓았다면 어떻게 해야 하나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        우선 친구의 이야기를 차분하게 들어주고,
                                        피해 사실을 의심하거나 책임을 묻지 않는 것이 중요합니다.
                                    </p>

                                    <p>
                                        친구의 의사를 존중하면서 필요한 도움을 함께 찾아보세요.
                                        무리하게 자세한 내용을 묻거나 본인의 동의 없이
                                        다른 사람에게 피해 사실을 알리지 않도록 주의해야 합니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <article class="faq-item"
                             data-category="support">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                피해자가 도움을 거부한다면 어떻게 해야 하나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        피해자의 의사와 속도를 존중하는 것이 중요합니다.
                                        도움을 강요하기보다는 필요할 때 언제든 이야기할 수 있다는
                                        점을 알려주세요.
                                    </p>

                                    <p>
                                        다만 생명이나 신체에 급박한 위험이 있다면
                                        안전 확보와 긴급 지원을 우선해야 합니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <!-- 디지털 성범죄 -->
                    <article class="faq-item"
                             data-category="digital">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                불법 촬영물이나 유포물을 발견했다면 어떻게 해야 하나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        해당 콘텐츠를 다운로드하거나 다른 사람에게 공유하지 마세요.
                                        재유포는 피해를 확대할 수 있습니다.
                                    </p>

                                    <p>
                                        가능한 범위에서 게시물 주소(URL), 게시 계정,
                                        발견 시각 등의 정보를 기록하고,
                                        관련 플랫폼과 전문 지원 기관에 신고 및 상담을 요청할 수 있습니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <article class="faq-item"
                             data-category="digital">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                사진 촬영에 동의했다면 온라인 유포에도 동의한 것인가요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        아닙니다. 촬영에 대한 동의와 유포에 대한 동의는
                                        별개의 문제입니다.
                                    </p>

                                    <p>
                                        촬영에 동의했더라도 해당 사진이나 영상의
                                        게시·전송·공유까지 동의한 것으로 볼 수 없습니다.
                                        동의 없는 유포는 법적 문제가 될 수 있습니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <!-- 신고 및 상담 -->
                    <article class="faq-item"
                             data-category="report">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                피해 사실을 신고하고 싶지만 신원이 알려질까 걱정됩니다.
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        신고나 상담 과정에서 개인정보 보호와 비밀 유지에 관한
                                        안내를 받을 수 있습니다.
                                    </p>

                                    <p>
                                        신고 절차와 신원 보호 범위는 사안과 기관에 따라
                                        달라질 수 있으므로, 먼저 전문 상담 기관에 문의하여
                                        자신의 상황에 맞는 절차를 확인하는 것도 좋은 방법입니다.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                    <article class="faq-item"
                             data-category="report">

                        <button type="button"
                                class="faq-question"
                                aria-expanded="false">

                            <span class="question-text">
                                <span class="question-mark">Q</span>
                                어디에서 전문적인 상담과 지원을 받을 수 있나요?
                            </span>

                            <span class="faq-arrow">+</span>

                        </button>

                        <div class="faq-answer" hidden>

                            <div class="answer-inner">

                                <span class="answer-mark">A</span>

                                <div>
                                    <p>
                                        여성긴급전화 1366을 통해 여성폭력 피해 관련
                                        상담과 지원 안내를 받을 수 있습니다.
                                    </p>

                                    <p>
                                        디지털 성범죄 피해의 경우 디지털성범죄피해자지원센터 등
                                        전문 기관에 상담을 요청할 수 있습니다.
                                        긴급한 위험 상황에서는 112에 연락하세요.
                                    </p>
                                </div>

                            </div>

                        </div>

                    </article>


                </div>

                <p id="empty-message" hidden>
                    해당 카테고리에 등록된 질문이 없습니다.
                </p>

            </div>

        </section>


        <!-- 3. 도움 안내 -->
        <section class="faq-help">

            <div class="faq-container">

                <h2>혼자 고민하지 마세요.</h2>

                <p>
                    도움이 필요한 상황이라면 전문 기관에 상담을 요청할 수 있습니다.
                </p>

                <div class="faq-help-cards">

                    <div class="faq-help-card">
                        <h3>긴급 신고</h3>
                        <strong>112</strong>
                        <p>긴급한 위험이나 범죄 피해 신고</p>
                    </div>

                    <div class="faq-help-card">
                        <h3>여성긴급전화</h3>
                        <strong>1366</strong>
                        <p>여성폭력 피해 상담 및 지원 안내</p>
                    </div>

                </div>

                <p class="faq-help-notice">
                    ※ 본 페이지는 일반적인 정보 제공을 위한 교육 콘텐츠이며,
                    개별 사건에 대한 법률적 판단이나 전문 상담을 대신하지 않습니다.
                </p>

            </div>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
