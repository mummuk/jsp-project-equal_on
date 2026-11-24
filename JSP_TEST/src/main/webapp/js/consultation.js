
const consultationForm = document.getElementById("consultationForm");

consultationForm.addEventListener("submit", function(event) {

    const userName = document.getElementById("userName").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const consultType = document.getElementById("consultType").value;
    const consultContent = document.getElementById("consultContent").value.trim();
    const privacyAgree = document.getElementById("privacyAgree").checked;

    // 이름 검사
    if (!userName) {
        event.preventDefault();
        alert("이름을 입력해 주세요.");
        return;
    }

    // 연락처 검사
    const phonePattern = /^[0-9+\-\s()]{8,20}$/;

    if (!phonePattern.test(phone)) {
        event.preventDefault();
        alert("연락처 형식을 확인해 주세요.");
        return;
    }

    // 상담 분야 검사
    if (!consultType) {
        event.preventDefault();
        alert("상담 분야를 선택해 주세요.");
        return;
    }

    // 상담 내용 검사
    if (!consultContent) {
        event.preventDefault();
        alert("상담 내용을 입력해 주세요.");
        return;
    }

    // 개인정보 안내 확인
    if (!privacyAgree) {
        event.preventDefault();
        alert("안내 내용을 확인해 주세요.");
        return;
    }

    // 실제 저장 및 접수는 진행하지 않음
    // complete.jsp로 이동

});
