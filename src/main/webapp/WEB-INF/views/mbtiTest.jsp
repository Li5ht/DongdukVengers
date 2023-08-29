<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MBTI 테스트</title>
</head>
<body>
    <h1>MBTI 성격 유형 테스트</h1>

    <%
        String[][] q = {
        {"나는 게임을 할 때,", "친구들이나 팀원들과 함께 즐기는 편이다.", "혼자 즐기는 편이다."},
        {"쉬는 날에 나는", "친구들을 만나 시간을 보내는 것이 내 스타일이다.", "집에서 게임하면서 쉬는 것이 내 스타일이다."},
        {"게임을 플레이 할 때", "처음 만난 사람과 대화하는 것을 좋아한다.","이전에 만났던 사람과 대화하는 것을 좋아한다."},
        {"내가 게임 캐릭터과 되어서 춤추기 vs 내가 춤추기", ""하… 뭐하지…?"라는 고민을 하며 다양한 생각을 고려한다.",""뭐야 그게…ㅋㅋㅋ"하며 현실적인 선택을 한다."},
        {"나에게 있어 캐릭터의 외형이 ", "중요하지 않다고 생각한다. ", "중요하다고 생각한다. "},
        {"게임을 하다가 멍 때릴 때, 나는 ", "온갖 상상의 나래를 펼쳐보며 새로운 아이디어를 고민한다.", "아무런 생각이 나지 않고 현재의 감각에 집중한다."},
        {"게임에 지면", "화가 나서 다음 게임에 영향을 미친다. ", "화는 나지만 이미 졌기 때문에 다음 게임에 집중을 한다."},
        {"게임을 하다가 같은 팀원이 배아프다고 자리를 비웠다.", "팀원의 상태를 걱정하는 편이다.", "그래도 게임에 피해를 주면 안된다고 생각한다."},
        {"친구가 “너 나랑 게임 스타일 진짜 안 맞다.” 라고 한다.", "그 말에 상처를 받는 편이다.", "친구가 “너 나랑 게임 스타일 진짜 안 맞다.” 라고 한다.", "어느 부분에서 안 맞는지 생각한다."},
        {"오늘 할 일을", "미루고 게임을 시작한다.","오늘 할 일을", "완벽하게 완료한 후, 게임을 시작한다."},
        {"나는 게임을 할 때 이기기 위해", "마음이 가는대로 하는편이다.","나는 게임을 할 때 이기기 위해", "나만의 전략을 쓰거나 공략법을 찾아보는 편이다."},
        {"게임을 처음 시작할 때 튜토리얼을", "귀찮아서 스킵 한 후 대충 게임을 시작한다. ", "게임을 처음 시작할 때 튜토리얼을", "차근차근 기초부터 탄탄히 쌓은 후에 본격적으로 게임을 시작한다."}
        };

        int[] counts = new int[4]; // E, I, N, S, F, T, P, J 순서대로
        String[] mbtiTypes = {"E", "I", "N", "S", "F", "T", "P", "J"};

        if (request.getParameter("submit") != null) {
            for (int i = 0; i < q.length; i++) {
                String questionType = q[i][0];
                String answer = request.getParameter("question_" + i);
                if (answer.equals("a")) {
                    if (questionType.equals("E"))
                        counts[0]++;
                    else if (questionType.equals("N"))
                        counts[2]++;
                    else if (questionType.equals("F"))
                        counts[4]++;
                    else if (questionType.equals("P"))
                        counts[6]++;
                } else if (answer.equals("b")) {
                    if (questionType.equals("I"))
                        counts[1]++;
                    else if (questionType.equals("S"))
                        counts[3]++;
                    else if (questionType.equals("T"))
                        counts[5]++;
                    else if (questionType.equals("J"))
                        counts[7]++;
            }
        }

        String mbtiType = "";
        for (int i = 0; i < 8; i += 2) {
            if (counts[i] >= counts[i + 1])
                mbtiType += mbtiTypes[i];
            else
                mbtiType += mbtiTypes[i + 1];
        }

        // DB에 저장하는 부분은 생략 (위의 코드 활용)

        out.println("당신의 MBTI 유형은 " + mbtiType + "입니다.");
        }
    %>

    <form method="post">
            <%
                for (int i = 0; i < q.length; i++) {
                    String questionText = q[i][0];
                    String answerA = q[i][1];
                    String answerB = q[i][2];
            %>
            <h3><%= questionText %></h3>
            <input type="radio" name="<%= "question_" + i %>" value="a"><%= answerA %><br>
            <input type="radio" name="<%= "question_" + i %>" value="b"><%= answerB %><br>
            <%
                }
            %>
            <input type="submit" name="submit" value="결과 확인">
        </form>
    </body>
    </html>
</body>
</html>