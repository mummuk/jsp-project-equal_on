
/* =========================
   뉴스 데이터
   DB 대신 JavaScript 배열 사용
========================= */

const newsList = [
    {
        id: 1,
		title: "실제 기사 제목",
		category: "정책",
		date: "2026-11-24",
		summary: "기사의 핵심 내용을 요약합니다.",
		url: "https://실제-기사-주소"

    },
    {
        id: 2,
        title: "디지털 성범죄 예방을 위한 사회적 노력",
        category: "디지털 성범죄",
        date: "2026-11-18",
        summary: "디지털 환경에서 발생하는 성범죄와 예방 방법을 알아봅니다.",
        content: `디지털 기술의 발전과 함께 불법 촬영물의 유포 및 유통 등 다양한 디지털 성범죄 문제가 발생하고 있습니다.

개인의 주의뿐만 아니라 사회적 대응 체계와 피해자 지원 역시 중요합니다.`
    },
    {
        id: 3,
        title: "일상 속 성차별 문제와 인식 개선",
        category: "사회",
        date: "2026-11-15",
        summary: "일상에서 무심코 지나칠 수 있는 성차별 문제를 생각해 봅니다.",
        content: `성차별은 거창한 사회적 문제뿐만 아니라 일상적인 언어와 행동에서도 나타날 수 있습니다.

서로의 차이를 존중하고 편견을 돌아보는 태도가 필요합니다.`
    },
    {
        id: 4,
        title: "학교 현장의 성평등 교육 확대",
        category: "교육",
        date: "2026-11-12",
        summary: "교육 현장에서 성평등 교육이 갖는 의미를 살펴봅니다.",
        content: `성평등 교육은 서로의 권리와 경계를 이해하고 존중하는 태도를 형성하는 데 도움을 줍니다.

학교와 지역사회가 함께 지속적인 교육 환경을 만들어 가는 것이 중요합니다.`
    },
    {
        id: 5,
        title: "피해자 보호와 지원 제도의 중요성",
        category: "정책",
        date: "2026-11-10",
        summary: "피해자가 안전하게 일상을 회복할 수 있도록 지원하는 제도를 알아봅니다.",
        content: `피해자 지원은 단순한 사건 처리를 넘어 안전 확보와 심리적 회복, 일상 복귀까지 고려해야 합니다.

피해자의 의사와 권리를 존중하는 지원 체계가 중요합니다.`
    },
    {
        id: 6,
        title: "온라인 공간의 올바른 디지털 시민의식",
        category: "디지털 성범죄",
        date: "2026-11-08",
        summary: "온라인 공간에서 타인의 권리를 존중하는 방법을 알아봅니다.",
        content: `온라인에서도 타인의 초상과 개인정보, 사생활을 존중해야 합니다.

동의 없는 촬영물이나 개인정보를 공유하지 않고, 불법 콘텐츠를 발견했을 때는 유포하지 않고 신고하는 태도가 필요합니다.`
    }
];


/* =========================
   DOM 요소
========================= */

const newsGrid = document.getElementById("newsGrid");
const newsCount = document.getElementById("newsCount");
const newsSearch = document.getElementById("newsSearch");
const searchButton = document.getElementById("searchButton");
const sortSelect = document.getElementById("sortSelect");
const categoryButtons = document.querySelectorAll(".category-button");

const newsEmpty = document.getElementById("newsEmpty");
const resetButton = document.getElementById("resetButton");

const newsModal = document.getElementById("newsModal");
const modalOverlay = document.getElementById("modalOverlay");
const modalClose = document.getElementById("modalClose");
const modalConfirm = document.getElementById("modalConfirm");

const modalCategory = document.getElementById("modalCategory");
const modalTitle = document.getElementById("modalTitle");
const modalDate = document.getElementById("modalDate");
const modalBody = document.getElementById("modalBody");


/* =========================
   현재 선택 상태
========================= */

let selectedCategory = "전체";
let searchKeyword = "";
let previousFocus = null;


/* =========================
   뉴스 목록 출력
========================= */

function renderNews() {

    // 카테고리 필터
    let filteredNews = newsList.filter(news => {

        const categoryMatch =
            selectedCategory === "전체" ||
            news.category === selectedCategory;

        const keywordMatch =
            news.title.toLowerCase().includes(searchKeyword.toLowerCase());

        return categoryMatch && keywordMatch;
    });


    // 정렬
    if (sortSelect.value === "latest") {
        filteredNews.sort((a, b) =>
            new Date(b.date) - new Date(a.date)
        );
    } else {
        filteredNews.sort((a, b) =>
            new Date(a.date) - new Date(b.date)
        );
    }


    // 기존 목록 초기화
    newsGrid.innerHTML = "";

    // 검색 결과 개수
    newsCount.textContent = filteredNews.length;


    // 검색 결과가 없는 경우
    if (filteredNews.length === 0) {
        newsEmpty.hidden = false;
        return;
    }

    newsEmpty.hidden = true;


    // 뉴스 카드 생성
    filteredNews.forEach(news => {

        const card = document.createElement("a");

        card.className = "news-card";
		card.href = news.url;
		card.target = "_blank";
		card.rel = "noopener noreferrer";

        // 카테고리별 이미지 영역 스타일
        let imageClass = "";

        if (news.category === "사회") {
            imageClass = "category-social";
        } else if (news.category === "디지털 성범죄") {
            imageClass = "category-digital";
        } else if (news.category === "교육") {
            imageClass = "category-education";
        }

        const image = document.createElement("div");
        image.className = "news-card-image " + imageClass;
        image.textContent = news.category;

        const content = document.createElement("div");
        content.className = "news-card-content";

        const category = document.createElement("span");
        category.className = "news-card-category";
        category.textContent = news.category;

        const title = document.createElement("h3");
        title.textContent = news.title;

        const summary = document.createElement("p");
        summary.className = "news-card-summary";
        summary.textContent = news.summary;

        const date = document.createElement("span");
        date.className = "news-card-date";
        date.textContent = news.date.replaceAll("-", ".");

        content.appendChild(category);
        content.appendChild(title);
        content.appendChild(summary);
        content.appendChild(date);

        card.appendChild(image);
        card.appendChild(content);

        newsGrid.appendChild(card);
    });
}


/* =========================
   카테고리 선택
========================= */

categoryButtons.forEach(button => {

    button.addEventListener("click", () => {

        // 기존 활성화 버튼 제거
        categoryButtons.forEach(item => {
            item.classList.remove("active");
        });

        // 선택한 버튼 활성화
        button.classList.add("active");

        // 선택 카테고리 변경
        selectedCategory = button.dataset.category;

        renderNews();
    });

});


/* =========================
   검색 기능
========================= */

function searchNews() {

    searchKeyword = newsSearch.value.trim();

    renderNews();
}

searchButton.addEventListener("click", searchNews);

newsSearch.addEventListener("keydown", event => {

    if (event.key === "Enter") {
        searchNews();
    }

});


/* =========================
   정렬 기능
========================= */

sortSelect.addEventListener("change", renderNews);


/* =========================
   상세 모달 열기
========================= */

function openModal(newsId) {

    const news = newsList.find(item => item.id === newsId);

    if (!news) {
        return;
    }

    previousFocus = document.activeElement;

    modalCategory.textContent = news.category;
    modalTitle.textContent = news.title;
    modalDate.textContent = news.date.replaceAll("-", ".");
    modalBody.textContent = news.content;

    newsModal.hidden = false;
    document.body.style.overflow = "hidden";

    modalClose.focus();
}


/* =========================
   상세 모달 닫기
========================= */

function closeModal() {

    newsModal.hidden = true;
    document.body.style.overflow = "";

    if (previousFocus) {
        previousFocus.focus();
    }
}


// 뉴스 카드 클릭
newsGrid.addEventListener("click", event => {

    const card = event.target.closest(".news-card");

    if (!card) {
        return;
    }

    openModal(Number(card.dataset.id));
});


// 키보드 Enter / Space로 상세 보기
newsGrid.addEventListener("keydown", event => {

    if (event.key !== "Enter" && event.key !== " ") {
        return;
    }

    const card = event.target.closest(".news-card");

    if (!card) {
        return;
    }

    event.preventDefault();
    openModal(Number(card.dataset.id));
});


// 모달 닫기 버튼
modalClose.addEventListener("click", closeModal);
modalConfirm.addEventListener("click", closeModal);
modalOverlay.addEventListener("click", closeModal);


// ESC 키로 닫기
document.addEventListener("keydown", event => {

    if (event.key === "Escape" && !newsModal.hidden) {
        closeModal();
    }

});


/* =========================
   전체 뉴스 보기
========================= */

resetButton.addEventListener("click", () => {

    selectedCategory = "전체";
    searchKeyword = "";

    newsSearch.value = "";
    sortSelect.value = "latest";

    categoryButtons.forEach(button => {

        button.classList.toggle(
            "active",
            button.dataset.category === "전체"
        );

    });

    renderNews();
});


/* =========================
   최초 실행
========================= */

renderNews();
