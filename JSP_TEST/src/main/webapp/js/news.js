
/* =========================
   뉴스 데이터
   JavaScript 배열 사용
========================= */

const categoryImages = {
    "정책": "news_policy.png",
    "디지털 성범죄": "news_digital_crime.png",
    "사회": "news_society.png",
    "교육": "news_education.png"
};

const newsList = [
    {
        id: 1,
        title: "디지털성범죄 피해 78%는 10·20대…딥페이크 '합성·편집' 심각",
        category: "디지털 성범죄",
        date: "2026-04-16",
        summary: "작년 피해자 1만637명…영상·사진 '유포 불안' 피해 가장 커",
        url: "https://www.yna.co.kr/view/AKR20260416072900530"
    },
    {
        id: 2,
        title: "디지털 성범죄 10년새 4배로…징역형 비율도 급증",
        category: "디지털 성범죄",
        date: "2026-05-12",
        summary: "온라인서 알게 된 가해자 피해 38%…채팅앱·오픈채팅이 주 접촉경로",
        url: "https://www.yna.co.kr/view/AKR20260512121100530"
    },
    {
        id: 3,
        title: "헤어진 뒤 딥페이크 협박…전 연인 협박 수단 된 AI 성범죄",
        category: "디지털 성범죄",
        date: "2026-07-08",
        summary: "피해 여성 42.5%가 전 연인으로부터 피해를 입은 사례를 다룹니다.",
        url: "https://www.seoul.co.kr/news/society/2026/07/08/20260708500257"
    },
    {
        id: 4,
        title: "법무부, 양성평등 5개년 추진계획 수립…성희롱·성폭력 근절",
        category: "정책",
        date: "2026-05-12",
        summary: "여성폭력방지정책 기본계획 2026년 시행계획 심의·확정",
        url: "https://www.mogef.go.kr/nw/enw/nw_enw_s001d.do?bbtSn=713770"
    },
    {
        id: 5,
        title: "디지털성범죄 근절 방안은…성평등부·권익위, 국민 의견 수렴",
        category: "정책",
        date: "2026-09-18",
        summary: "디지털 성범죄 근절을 위한 국민 의견 수렴과 불법 사이트 제보 창구 운영",
        url: "https://www.yna.co.kr/view/AKR20260917178800530"
    },
    {
        id: 6,
        title: "초등생 유인해 성범죄 10대, 징역 6년 선고받자 법정서 소란",
        category: "사회",
        date: "2026-06-12",
        summary: "SNS를 통해 아동을 유인한 성범죄 사건의 재판 결과를 다룹니다.",
        url: "https://www.yna.co.kr/view/AKR20260612103000051"
    },
    {
        id: 7,
        title: "전자발찌 찬 상태로 지인 딸 추행한 50대 항소심도 실형",
        category: "사회",
        date: "2026-08-28",
        summary: "아동 대상 성범죄 사건의 항소심 판결과 법원의 보호 명령을 다룹니다.",
        url: "https://www.yna.co.kr/view/AKR20260828123700064"
    },
    {
        id: 8,
        title: "'피해자 진술'이 유일증거인 성범죄 사건, 2심 무죄 판결 배경은",
        category: "사회",
        date: "2026-06-28",
        summary: "성인화보사 전 대표의 모델 성폭행 혐의와 1심·2심 판결을 다룹니다.",
        url: "https://www.yna.co.kr/view/AKR20260626093800065"
    },
    {
        id: 9,
        title: "울산교육청, 초·중학생 대상 찾아가는 성교육 운영",
        category: "교육",
        date: "2026-03-26",
        summary: "초등학교와 중학교 학생을 대상으로 동의, 상호 존중, 성폭력 및 디지털 성범죄 예방 교육을 운영합니다.",
        url: "https://www.yna.co.kr/view/AKR20260326158800057"
    },
    {
        id: 10,
        title: "성평등부·교육부, 대학 폭력예방교육 현장점검…참여율 제고 나서",
        category: "교육",
        date: "2026-05-13",
        summary: "대학 폭력예방교육 실적 점검과 교육 참여율을 높이기 위한 관리 강화 방안을 다룹니다.",
        url: "https://www.newspim.com/news/view/20260512000935"
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


/* =========================
   현재 선택 상태
========================= */

let selectedCategory = "전체";
let searchKeyword = "";


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

        // 뉴스 카드 전체를 링크로 생성
        const card = document.createElement("a");

        card.className = "news-card";
        card.href = news.url;
        card.target = "_blank";
        card.rel = "noopener noreferrer";


        // 카테고리별 이미지 생성
        const image = document.createElement("img");

        image.src = `${contextPath}/images/news/${categoryImages[news.category]}`;
        image.alt = `${news.category} 관련 이미지`;
        image.className = "news-thumbnail";


        // 카드 내용 영역
        const content = document.createElement("div");

        content.className = "news-card-content";


        // 카테고리
        const category = document.createElement("span");

        category.className = "news-card-category";
        category.textContent = news.category;


        // 제목
        const title = document.createElement("h3");

        title.textContent = news.title;


        // 요약
        const summary = document.createElement("p");

        summary.className = "news-card-summary";
        summary.textContent = news.summary;


        // 날짜
        const date = document.createElement("span");

        date.className = "news-card-date";
        date.textContent = news.date.replaceAll("-", ".");


        // 요소 결합
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
