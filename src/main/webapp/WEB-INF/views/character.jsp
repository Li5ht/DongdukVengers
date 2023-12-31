<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOC TYPE html>

<html>
<head>
    <title>MBTI Character Info</title>
</head>
<body>
<form>
    <label for="result">Enter your MBTI result:</label>
    <input type="text" id="result" placeholder="E.g. INTJ">
    <button type="button" onclick="fetchCharacterInfo()">Get Character Info</button>
</form>

<div id="characterInfo" style="display: none;">
    <h2>당신과 어울리는 영웅은...</h2>
    <p><strong></strong> <span id="characterName"></span></p>
    <p><strong>[<span id="characterIntroduction"></span>]</strong></p>
    <p><strong>당신은 </strong> <span id="characterDescription"></span></p>
    <h2>그러므로 어울리는 게임은...</h2>
</div>

<script>
  const characterData = {
    "ENFJ": {
      character: "애쉬",
      introduction: "주도면밀한 선도자",
      description: "의욕을 불어넣는 카리스마와 열정이 타오릅니다."
    },
    "ENTJ": {
      character: "솔져 76",
      introduction: "의지가 강한 통솔자",
      description: "대담하고 의지가 강한 지도자입니다."
    },
    "ENFP": {
      character: "트레이서",
      introduction: "활기찬 모험가",
      description: "탁월한 기량과 긍정적인 태도를 가진 모험가입니다."
    },
    "ENTP": {
      character: "정크렛",
      introduction: "호기심 많은 변론가",
      description: "도전을 즐기고 영리한 사색가입니다."
    },
    "ESTP": {
      character: "라인하르트",
      introduction: "에너지 넘치는 기사",
      description: "관찰력이 뛰어나고 위험을 감수하는 성격입니다."
    },
    "ESFP": {
      character: "디바",
      introduction: "행복 가득 연예인",
      description: "즉흥적이고 사람을 즐겁게 해줍니다."
    },
    "ESTJ": {
      character: "파라",
      introduction: "열정적인 경영자",
      description: "명예롭고 열정이 타오릅니다."
    },
    "ESFJ": {
      character: "루시우",
      introduction: "사교성 높은 마당발",
      description: "배려가 넘치고 다른 사람을 도울 준비가 되어 있습니다."
    },
    "ISTP": {
      character: "리퍼",
      introduction: "대담한 수장",
      description: "현실적이고 도구를 자유자재로 다룹니다."
    },
    "ISFP": {
      character: "오리사",
      introduction: "선한 모험가",
      description: "새로운 경험을 추구하는 매력 넘치는 예술가입니다."
    },
    "ISFJ": {
      character: "메르시",
      introduction: "따뜻한 수호자",
      description: "주변 사람을 보호할 준비가 되어 있는 헌신적인 사람입니다."
    },
    "INTP": {
      character: "아나",
      introduction: "논리적인 혁신가",
      description: "탁월한 전투 능력과 노련함으로 소중한 사람들을 보호합니다."
    },
    "INFP": {
      character: "젠야타",
      introduction: "낭만적인 중재자",
      description: "선을 행할 준비가 되어 있고, 부드럽고 친절합니다."
    },
    "ISTJ": {
      character: "위도우메이커",
      introduction: "냉철한 지도자",
      description: "사실을 중시하는 믿음직한 현실주의자입니다."
    },
    "INTJ": {
      character: "솜브라",
      introduction: "민첩한 전략가",
      description: "민첩함과 동시에 뛰어난 지능을 갖고 있습니다."
    },
    "INFJ": {
      character: "메이",
      introduction: "차분한 이상주의자",
      description: "차분하고 신비한 분위기를 품기는 성격입니다."
    },
    "default": {
      character: "Unknown",
      introduction: "Unknown",
      description: "Unknown"
    }
  };

  function fetchCharacterInfo() {
    const mbtiResult = document.getElementById("result").value.toUpperCase();
    const characterInfo = characterData[mbtiResult] || characterData["default"];
    const characterNameElement = document.getElementById("characterName");
    const characterIntroductionElement = document.getElementById("characterIntroduction");
    const characterDescriptionElement = document.getElementById("characterDescription");

    characterNameElement.textContent = characterInfo.character;
    characterIntroductionElement.textContent = characterInfo.introduction;
    characterDescriptionElement.textContent = characterInfo.description;

    document.getElementById("characterInfo").style.display = "block";
  }
</script>
</body>
</html>
