
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>상담 신청 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/consultation.css">

    <script src="${pageContext.request.contextPath}/js/consultation.js" defer></script>
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="consultation-page">

        <!-- 페이지 소개 -->
        <section class="consultation-hero">
            <div class="consultation-hero-content">
                <span>CONSULTATION</span>

                <h1>도움이 필요하다면<br>언제든지 이야기를 시작하세요.</h1>

                <p>
                    필요한 지원과 상담에 관한 내용을 작성해 주세요.
                    <br>
                    작성한 내용은 프로젝트 시연용으로만 처리됩니다.
                </p>
            </div>
        </section>


        <!-- 신청서 -->
        <section class="consultation-section">

            <div class="consultation-heading">
                <h2>상담 신청서</h2>
                <p>
                    <span>*</span> 표시는 필수 입력 항목입니다.
                </p>
            </div>


            <form id="consultationForm"
                  action="${pageContext.request.contextPath}/expert/complete.jsp"
                  method="post">

                <!-- 이름 -->
                <div class="form-group">
                    <label for="userName">
                        이름 <span>*</span>
                    </label>

                    <input type="text"
                           id="userName"
                           name="userName"
                           placeholder="이름을 입력해 주세요."
                           required
                           maxlength="30">
                </div>


                <!-- 연락처 -->
                <div class="form-group">
                    <label for="phone">
                        연락처 <span>*</span>
                    </label>

                    <input type="tel"
                           id="phone"
                           name="phone"
                           placeholder="연락 가능한 전화번호를 입력해 주세요."
                           required
                           maxlength="20">
                </div>


                <!-- 상담 분야 -->
                <div class="form-group">
                    <label for="consultType">
                        상담 분야 <span>*</span>
                    </label>

                    <select id="consultType"
                            name="consultType"
                            required>

                        <option value="">상담 분야를 선택해 주세요.</option>
                        <option value="법률">법률 상담</option>
                        <option value="심리">심리 상담</option>
                        <option value="의료">의료 지원</option>
                        <option value="피해 지원">피해 지원</option>
                        <option value="기타">기타</option>

                    </select>
                </div>


                <!-- 상담 내용 -->
                <div class="form-group">
                    <label for="consultContent">
                        상담 내용 <span>*</span>
                    </label>

                    <textarea id="consultContent"
                              name="consultContent"
                              rows="7"
                              maxlength="2000"
                              placeholder="상담이 필요한 내용이나 궁금한 점을 작성해 주세요."
                              required></textarea>

                    <p class="form-description">
                        민감한 개인정보나 구체적인 피해 사실은 입력하지 않는 것을 권장합니다.
                    </p>
                </div>


                <!-- 개인정보 동의 -->
                <div class="privacy-group">

                    <h3>개인정보 수집 및 이용 동의</h3>

                    <div class="privacy-description">
                        <p>
                            본 페이지는 대학 프로젝트 시연용으로 제작되었습니다.
                        </p>
                        <p>
                            실제 상담 접수 및 개인정보 저장 기능은 제공하지 않습니다.
                        </p>
                        <p>
                            입력한 정보는 서버에 저장되지 않으며,
                            실제 상담 서비스로 전달되지 않습니다.
                        </p>
                    </div>

                    <label class="privacy-checkbox">
                        <input type="checkbox"
                               id="privacyAgree"
                               required>

                        <span>
                            위 내용을 확인했습니다. <strong>*</strong>
                        </span>
                    </label>

                </div>


                <!-- 버튼 -->
                <div class="form-buttons">

                    <a href="${pageContext.request.contextPath}/expert/expert.jsp"
                       class="cancel-button">
                        취소
                    </a>

                    <button type="submit" class="submit-button">
                        신청서 제출
                    </button>

                </div>

            </form>

        </section>

    </main>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
