
"use strict";

// ==============================
// 1. 퀴즈 데이터
// ==============================

const questions = [

    {
        question: "성폭력 피해자는 사건 당시 강하게 저항해야만 피해를 인정받을 수 있다.",
        answer: false,
        explanation:
            "아닙니다. 저항 여부만으로 피해의 유무를 판단할 수 없습니다. " +
            "두려움이나 위협 등으로 저항하지 못하는 상황도 있을 수 있습니다."
    },

    {
        question: "친밀한 관계에서도 상대방의 동의 없는 성적 행위는 문제가 될 수 있다.",
        answer: true,
        explanation:
            "맞습니다. 연인이나 배우자 등 친밀한 관계라는 이유로 " +
            "상대방의 동의가 불필요해지는 것은 아닙니다."
    },

    {
        question: "피해자의 옷차림이나 외출 시간은 성폭력 피해의 책임을 결정하는 기준이 된다.",
        answer: false,
        explanation:
            "아닙니다. 옷차림이나 외출 시간은 성폭력 피해의 책임을 정당화하는 근거가 될 수 없습니다. " +
            "책임은 행위자의 행동을 중심으로 판단해야 합니다."
    },

    {
        question: "상대방의 동의 없이 성적 촬영물을 유포하는 행위도 디지털 성범죄에 해당할 수 있다.",
        answer: true,
        explanation:
            "맞습니다. 동의 없는 성적 촬영물의 유포는 디지털 성범죄에 해당할 수 있으며, " +
            "촬영에 동의했더라도 유포까지 동의한 것은 아닙니다."
    },

    {
        question: "한 번 성적 행위에 동의했다면 이후의 모든 행위에도 계속 동의한 것으로 볼 수 있다.",
        answer: false,
        explanation:
            "아닙니다. 동의는 각각의 상황과 행위에 대해 확인되어야 합니다. " +
            "이전의 동의가 이후의 동의를 의미하지는 않습니다."
    }

];


// ==============================
// 2. 퀴즈 진행 상태
// ==============================

let currentQuestion = 0;
let score = 0;
let answered = false;


// ==============================
// 3. HTML 요소 가져오기
// ==============================

const questionNumber =
    document.getElementById("question-number");

const progressText =
    document.getElementById("progress-text");

const progressFill =
    document.getElementById("progress-fill");

const questionText =
    document.getElementById("question-text");

const answerButtons =
    document.querySelectorAll(".answer-button");

const feedbackArea =
    document.getElementById("feedback-area");

const feedbackTitle =
    document.getElementById("feedback-title");

const feedbackExplanation =
    document.getElementById("feedback-explanation");

const nextButton =
    document.getElementById("next-button");

const quizContent =
    document.getElementById("quiz-content");

const resultArea =
    document.getElementById("result-area");

const finalScore =
    document.getElementById("final-score");

const resultMessage =
    document.getElementById("result-message");

const restartButton =
    document.getElementById("restart-button");


// ==============================
// 4. 문제 출력
// ==============================

function showQuestion() {

    const question = questions[currentQuestion];

    answered = false;

    questionNumber.textContent =
        "QUESTION " + (currentQuestion + 1);

    progressText.textContent =
        (currentQuestion + 1) + " / " + questions.length;

    progressFill.style.width =
        ((currentQuestion + 1) / questions.length * 100) + "%";

    questionText.textContent =
        question.question;

    // 이전 문제의 선택 상태 초기화
    answerButtons.forEach(button => {

        button.disabled = false;
        button.classList.remove("selected");

    });

    // 해설 숨기기
    feedbackArea.hidden = true;

    // 다음 문제 버튼 초기화
    nextButton.disabled = true;

    if (currentQuestion === questions.length - 1) {
        nextButton.textContent = "결과 확인";
    } else {
        nextButton.textContent = "다음 문제";
    }

}


// ==============================
// 5. 답변 확인
// ==============================

function checkAnswer(userAnswer, selectedButton) {

    // 이미 답변한 문제라면 실행하지 않음
    if (answered) {
        return;
    }

    answered = true;

    const question = questions[currentQuestion];

    const isCorrect =
        userAnswer === question.answer;

    // 정답이면 점수 증가
    if (isCorrect) {
        score++;
    }

    // 선택한 버튼 표시 및 버튼 비활성화
    answerButtons.forEach(button => {

        button.disabled = true;

    });

    selectedButton.classList.add("selected");


    // 정답 여부 출력
    if (isCorrect) {

        feedbackTitle.textContent = "정답입니다!";

    } else {

        feedbackTitle.textContent =
            "아쉽지만 오답입니다.";

    }


    // 해설 출력
    feedbackExplanation.textContent =
        question.explanation;

    feedbackArea.hidden = false;

    // 다음 문제 버튼 활성화
    nextButton.disabled = false;

}


// ==============================
// 6. 다음 문제로 이동
// ==============================

function nextQuestion() {

    if (!answered) {
        return;
    }

    currentQuestion++;

    if (currentQuestion < questions.length) {

        showQuestion();

    } else {

        showResult();

    }

}


// ==============================
// 7. 결과 출력
// ==============================

function showResult() {

    quizContent.hidden = true;
    resultArea.hidden = false;

    finalScore.textContent = score;

    if (score === questions.length) {

        resultMessage.textContent =
            "모든 문제를 맞혔습니다! 올바른 인식을 잘 이해하고 있네요.";

    } else if (score >= 3) {

        resultMessage.textContent =
            "좋은 결과입니다! 해설을 다시 확인하며 이해를 넓혀 보세요.";

    } else {

        resultMessage.textContent =
            "해설을 다시 살펴보며 올바른 인식을 함께 배워 봅시다.";

    }

}


// ==============================
// 8. 퀴즈 다시 시작
// ==============================

function restartQuiz() {

    currentQuestion = 0;
    score = 0;
    answered = false;

    resultArea.hidden = true;
    quizContent.hidden = false;

    showQuestion();

}


// ==============================
// 9. 이벤트 연결
// ==============================

answerButtons.forEach(button => {

    button.addEventListener("click", function () {

        const userAnswer =
            this.dataset.answer === "true";

        checkAnswer(userAnswer, this);

    });

});


nextButton.addEventListener("click", nextQuestion);

restartButton.addEventListener("click", restartQuiz);


// ==============================
// 10. 첫 문제 출력
// ==============================

showQuestion();
