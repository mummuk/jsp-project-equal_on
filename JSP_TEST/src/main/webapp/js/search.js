
const contextPath = document.body.dataset.contextPath;

// 임시 검색 데이터
// 실제 뉴스와 전문가 데이터로 추후 교체할 것
const searchData = [
    // 교육
    {
        title: "성평등 오해와 진실",
        category: "education",
        description: "성평등에 관한 대표적인 오해와 올바른 개념을 OX 퀴즈로 확인해 보세요.",
        keywords: "성평등 오해 진실 퀴즈 편견",
        url: "/education/mythCheck.jsp"
    },
    {
        title: "성폭력 예방 방법",
        category: "education",
        description: "일상생활과 디지털 환경에서 실천할 수 있는 예방 방법을 알아봅니다.",
        keywords: "성폭력 예방 디지털 안전 대응",
        url: "/education/prevention.jsp"
    },
    {
        title: "자주 묻는 질문",
        category: "education",
        description: "피해 발생 시 대처 방법과 신고 및 상담에 관한 정보를 확인하세요.",
        keywords: "FAQ 질문 신고 상담 피해",
        url: "/education/faq.jsp"
    },

    // 뉴스
    {
        title: "성평등 관련 정책 및 제도",
        category: "news",
        description: "성평등 관련 정책과 제도에 관한 정보를 확인할 수 있습니다.",
        keywords: "정책 제도 성평등",
        url: "/news/news.jsp"
    },
    {
        title: "디지털 성범죄 관련 사회 이슈",
        category: "news",
        description: "디지털 성범죄와 관련된 사회적 이슈를 살펴봅니다.",
        keywords: "디지털 성범죄 사회 이슈",
        url: "/news/news.jsp"
    },

    // 전문가
    {
        title: "법률 분야 전문가",
        category: "expert",
        description: "법률 및 피해 지원과 관련된 전문가 정보를 확인하세요.",
        keywords: "법률 변호사 상담 지원",
        url: "/expert/expert.jsp"
    },
    {
        title: "심리 분야 전문가",
        category: "expert",
        description: "심리 상담과 관련된 전문가 정보를 확인하세요.",
        keywords: "심리 상담 심리 지원",
        url: "/expert/expert.jsp"
    }
];

const categoryNames = {
    education: "교육",
    news: "뉴스",
    expert: "전문가"
};

const keywordInput = document.getElementById("keyword");
const resultTitle = document.getElementById("result-title");
const resultCount = document.getElementById("result-count");
const resultContainer = document.getElementById("search-results");
const filterButtons = document.querySelectorAll(".filter-btn");

const params = new URLSearchParams(window.location.search);
const keyword = (params.get("keyword") || "").trim();

let selectedCategory = "all";

keywordInput.value = keyword;

// 검색 실행
function searchItems() {
    const normalizedKeyword = keyword.toLowerCase();

    const filteredData = searchData.filter(item => {
        const matchesCategory =
            selectedCategory === "all" ||
            item.category === selectedCategory;

        const searchText =
            `${item.title} ${item.description} ${item.keywords}`
            .toLowerCase();

        const matchesKeyword =
            normalizedKeyword === "" ||
            searchText.includes(normalizedKeyword);

        return matchesCategory && matchesKeyword;
    });

    renderResults(filteredData);
}

// 결과 출력
function renderResults(results) {
    resultContainer.replaceChildren();

    resultTitle.textContent = keyword
        ? `"${keyword}" 검색 결과`
        : "전체 콘텐츠";

    resultCount.textContent = `총 ${results.length}건의 결과`;

    if (results.length === 0) {
        const emptyMessage = document.createElement("div");
        emptyMessage.className = "no-result";

        const heading = document.createElement("h3");
        heading.textContent = "검색 결과가 없습니다.";

        const description = document.createElement("p");
        description.textContent =
            "다른 검색어를 입력하거나 검색어를 다시 확인해 주세요.";

        emptyMessage.append(heading, description);
        resultContainer.appendChild(emptyMessage);

        return;
    }

    results.forEach(item => {
        const card = document.createElement("a");

        card.className = "search-result-card";
        card.href = contextPath + item.url;

        const category = document.createElement("span");
        category.className = "result-category";
        category.textContent = categoryNames[item.category];

        const title = document.createElement("h3");
        title.textContent = item.title;

        const description = document.createElement("p");
        description.textContent = item.description;

        const linkText = document.createElement("span");
        linkText.className = "result-link";
        linkText.textContent = "콘텐츠 확인하기 →";

        card.append(category, title, description, linkText);
        resultContainer.appendChild(card);
    });
}

// 카테고리 필터
filterButtons.forEach(button => {
    button.addEventListener("click", () => {
        filterButtons.forEach(btn =>
            btn.classList.remove("active")
        );

        button.classList.add("active");

        selectedCategory = button.dataset.category;

        searchItems();
    });
});

// 최초 실행
searchItems();
