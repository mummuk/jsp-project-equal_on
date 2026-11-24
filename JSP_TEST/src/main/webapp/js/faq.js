
"use strict";

// ==============================
// 1. HTML 요소 가져오기
// ==============================

const categoryButtons =
    document.querySelectorAll(".category-button");

const faqItems =
    document.querySelectorAll(".faq-item");

const emptyMessage =
    document.getElementById("empty-message");


// ==============================
// 2. 질문 열기 / 닫기
// ==============================

faqItems.forEach(item => {

    const questionButton =
        item.querySelector(".faq-question");

    const answer =
        item.querySelector(".faq-answer");


    questionButton.addEventListener("click", function () {

        const isOpen =
            item.classList.contains("open");


        // 모든 질문 닫기
        faqItems.forEach(otherItem => {

            otherItem.classList.remove("open");

            otherItem.querySelector(".faq-answer").hidden = true;

            otherItem.querySelector(".faq-question")
                .setAttribute("aria-expanded", "false");

        });


        // 클릭한 질문이 닫혀 있었다면 열기
        if (!isOpen) {

            item.classList.add("open");

            answer.hidden = false;

            questionButton.setAttribute(
                "aria-expanded",
                "true"
            );

        }

    });

});


// ==============================
// 3. 카테고리 필터링
// ==============================

categoryButtons.forEach(button => {

    button.addEventListener("click", function () {

        const selectedCategory =
            this.dataset.category;

        let visibleCount = 0;


        // 모든 버튼의 active 제거
        categoryButtons.forEach(categoryButton => {

            categoryButton.classList.remove("active");

        });


        // 선택한 버튼에 active 추가
        this.classList.add("active");


        // 질문 목록 필터링
        faqItems.forEach(item => {

            const itemCategory =
                item.dataset.category;

            const isVisible =
                selectedCategory === "all" ||
                selectedCategory === itemCategory;


            item.hidden = !isVisible;


            // 숨겨지는 질문은 열린 상태도 초기화
            if (!isVisible) {

                item.classList.remove("open");

                const answer =
                    item.querySelector(".faq-answer");

                const question =
                    item.querySelector(".faq-question");

                answer.hidden = true;

                question.setAttribute(
                    "aria-expanded",
                    "false"
                );

            }


            if (isVisible) {
                visibleCount++;
            }

        });


        // 해당 카테고리에 질문이 없는 경우
        emptyMessage.hidden = visibleCount !== 0;

    });

});
