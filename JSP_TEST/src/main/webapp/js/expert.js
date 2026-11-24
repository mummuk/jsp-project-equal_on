
/* =========================
   전문가 데이터
   실제 인물이 아닌 시연용 가상 데이터
========================= */

const experts = [
    {
        id: 1,
        name: "김민수",
        initial: "김",
        category: "법률",
        position: "법률 전문가",
        field: "성폭력 관련 법률 및 피해자 권리",
        description: "성폭력 관련 법률과 피해자 권리에 관한 정보를 제공하는 시연용 가상 전문가입니다."
    },
    {
        id: 2,
        name: "이서연",
        initial: "이",
        category: "심리",
        position: "심리 상담 전문가",
        field: "피해 경험 이후의 심리 회복",
        description: "피해 경험 이후 발생할 수 있는 심리적 어려움과 회복 과정에 관한 정보를 제공하는 시연용 가상 전문가입니다."
    },
    {
        id: 3,
        name: "박지훈",
        initial: "박",
        category: "의료",
        position: "의료 전문가",
        field: "피해 이후 의료 지원 및 건강 관리",
        description: "피해 이후 필요한 의료적 지원과 건강 관리에 관한 정보를 제공하는 시연용 가상 전문가입니다."
    },
    {
        id: 4,
        name: "최유진",
        initial: "최",
        category: "지원",
        position: "피해 지원 전문가",
        field: "피해자 지원 제도 및 기관 안내",
        description: "피해자 지원 제도와 관련 기관 이용 방법에 관한 정보를 제공하는 시연용 가상 전문가입니다."
    },
    {
        id: 5,
        name: "정하늘",
        initial: "정",
        category: "법률",
        position: "법률 전문가",
        field: "디지털 성범죄 및 개인정보 보호",
        description: "디지털 성범죄와 개인정보 보호에 관한 일반적인 법률 정보를 제공하는 시연용 가상 전문가입니다."
    },
    {
        id: 6,
        name: "윤소희",
        initial: "윤",
        category: "심리",
        position: "심리 상담 전문가",
        field: "트라우마 및 정서적 회복",
        description: "트라우마와 정서적 회복에 관한 정보를 제공하는 시연용 가상 전문가입니다."
    }
];


/* =========================
   DOM 요소
========================= */

const expertGrid = document.getElementById("expertGrid");
const expertCount = document.getElementById("expertCount");

const expertSearch = document.getElementById("expertSearch");
const searchButton = document.getElementById("searchButton");

const categoryButtons =
    document.querySelectorAll(".expert-category");

const expertEmpty = document.getElementById("expertEmpty");
const resetButton = document.getElementById("resetButton");

const expertModal = document.getElementById("expertModal");
const modalOverlay = document.getElementById("modalOverlay");
const modalClose = document.getElementById("modalClose");
const modalConfirm = document.getElementById("modalConfirm");

const modalAvatar = document.getElementById("modalAvatar");
const modalCategory = document.getElementById("modalCategory");
const modalName = document.getElementById("modalName");
const modalPosition = document.getElementById("modalPosition");
const modalField = document.getElementById("modalField");
const modalDescription = document.getElementById("modalDescription");


/* =========================
   현재 선택 상태
========================= */

let selectedCategory = "전체";
let searchKeyword = "";
let previousFocus = null;


/* =========================
   전문가 목록 출력
========================= */

function renderExperts() {

    // 카테고리 및 검색어 필터링
    const filteredExperts = experts.filter(expert => {

        const categoryMatch =
            selectedCategory === "전체" ||
            expert.category === selectedCategory;

        const keywordMatch = [
            expert.name,
            expert.position,
            expert.field
        ].some(value =>
            value.toLowerCase().includes(searchKeyword.toLowerCase())
        );

        return categoryMatch && keywordMatch;

    });


    // 기존 카드 초기화
    expertGrid.innerHTML = "";

    // 검색 결과 개수 표시
    expertCount.textContent = filteredExperts.length;


    // 검색 결과가 없는 경우
    if (filteredExperts.length === 0) {
        expertEmpty.hidden = false;
        return;
    }

    expertEmpty.hidden = true;


    // 전문가 카드 생성
    filteredExperts.forEach(expert => {

        const card = document.createElement("article");

        card.className = "expert-card";
        card.tabIndex = 0;
        card.setAttribute("role", "button");
        card.setAttribute(
            "aria-label",
            expert.name + " 전문가 상세 정보"
        );

        card.dataset.id = expert.id;


        // 프로필 이니셜
        const avatar = document.createElement("div");
        avatar.className = "expert-avatar";
        avatar.textContent = expert.initial;


        // 분야
        const category = document.createElement("span");
        category.className = "expert-card-category";
        category.textContent = expert.category;


        // 이름
        const name = document.createElement("h3");
        name.textContent = expert.name;


        // 직책
        const position = document.createElement("p");
        position.className = "expert-card-position";
        position.textContent = expert.position;


        // 전문 분야
        const field = document.createElement("p");
        field.className = "expert-card-field";
        field.textContent = expert.field;


        // 상세 보기 안내
        const detail = document.createElement("span");
        detail.className = "expert-card-detail";
        detail.textContent = "상세 정보 보기 →";


        // 카드에 요소 추가
        card.appendChild(avatar);
        card.appendChild(category);
        card.appendChild(name);
        card.appendChild(position);
        card.appendChild(field);
        card.appendChild(detail);

        expertGrid.appendChild(card);

    });

}


/* =========================
   카테고리 선택
========================= */

categoryButtons.forEach(button => {

    button.addEventListener("click", () => {

        categoryButtons.forEach(item => {
            item.classList.remove("active");
        });

        button.classList.add("active");

        selectedCategory = button.dataset.category;

        renderExperts();

    });

});


/* =========================
   검색 기능
========================= */

function searchExperts() {

    searchKeyword = expertSearch.value.trim();

    renderExperts();

}

searchButton.addEventListener("click", searchExperts);

expertSearch.addEventListener("keydown", event => {

    if (event.key === "Enter") {
        searchExperts();
    }

});


/* =========================
   상세 정보 모달 열기
========================= */

function openExpertModal(expertId) {

    const expert = experts.find(item => item.id === expertId);

    if (!expert) {
        return;
    }

    previousFocus = document.activeElement;

    modalAvatar.textContent = expert.initial;
    modalCategory.textContent = expert.category;
    modalName.textContent = expert.name;
    modalPosition.textContent = expert.position;
    modalField.textContent = expert.field;
    modalDescription.textContent = expert.description;

    expertModal.hidden = false;

    document.body.style.overflow = "hidden";

    modalClose.focus();

}


/* =========================
   상세 정보 모달 닫기
========================= */

function closeExpertModal() {

    expertModal.hidden = true;

    document.body.style.overflow = "";

    if (previousFocus) {
        previousFocus.focus();
    }

}


/* =========================
   카드 클릭 이벤트
========================= */

expertGrid.addEventListener("click", event => {

    const card = event.target.closest(".expert-card");

    if (!card) {
        return;
    }

    openExpertModal(Number(card.dataset.id));

});


/* 키보드 Enter / Space 지원 */

expertGrid.addEventListener("keydown", event => {

    if (event.key !== "Enter" && event.key !== " ") {
        return;
    }

    const card = event.target.closest(".expert-card");

    if (!card) {
        return;
    }

    event.preventDefault();

    openExpertModal(Number(card.dataset.id));

});


/* =========================
   모달 닫기 이벤트
========================= */

modalClose.addEventListener("click", closeExpertModal);

modalConfirm.addEventListener("click", closeExpertModal);

modalOverlay.addEventListener("click", closeExpertModal);


document.addEventListener("keydown", event => {

    if (event.key === "Escape" && !expertModal.hidden) {
        closeExpertModal();
    }

});


/* =========================
   전체 전문가 보기
========================= */

resetButton.addEventListener("click", () => {

    selectedCategory = "전체";
    searchKeyword = "";

    expertSearch.value = "";

    categoryButtons.forEach(button => {

        button.classList.toggle(
            "active",
            button.dataset.category === "전체"
        );

    });

    renderExperts();

});


/* =========================
   최초 실행
========================= */

renderExperts();
