
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>신청 완료 | EQUAL:ON</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/common.css">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/consultation.css">
</head>

<body>

    <%@ include file="/common/header.jsp" %>

    <main class="complete-page">

        <div class="complete-card">

            <div class="complete-icon">✓</div>

            <span>CONSULTATION</span>

            <h1>신청서 작성이 완료되었습니다.</h1>

            <p>
                EQUAL:ON 프로젝트의 상담 신청 시연이 완료되었습니다.
                <br>
                실제 상담 접수 및 개인정보 저장은 이루어지지 않습니다.
            </p>

            <a href="${pageContext.request.contextPath}/main.jsp">
                메인 페이지로 이동
            </a>

        </div>

    </main>

    <%@ include file="/common/footer.jsp" %>

</body>
</html>
