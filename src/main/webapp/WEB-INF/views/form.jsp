<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../../css/form.css">
    <title>form</title>
</head>
<body>
<form>
    <div id="AndroidLarge">
        <div id="logo"></div> <div id="dvengers">DVENGERS</div>
        <div id="Rectangle35">
            <div id="age">나이</div><div id="Rectangle37"></div>
            <div id="sex">성별</div>
            <div id="favorite">즐겨하는 게임</div>
            <div>
            <form action="" method="post">
                <input type="text" id="Rectangle40">
            </form>
            </div>
            <div id="playtime">게임 지속시간</div>
            <div id="Rectangle41">
                <form action="" method="post">
                    <label>게임 지속시간</label><br>
                    <select name="box" id="playtimebox">
                        <option>----- 선택하세요 -----</option>
                        <option value="1">1시간 이하</option>
                        <option value="2">1시간 ~ 2시간</option>
                        <option value="3">2시간 ~ 4시간</option>
                        <option value="4">4시간 ~ 6시간</option>
                        <option value="5">6시간 이상</option>
                    </select>
                </form>
            </div>
            <div id="frequency">게임 빈도</div>
            <div id="Rectangle42">
                <form action="" method="post">
                    <label>게임 빈도</label><br>
                    <select name="box" id="frequencybox">
                        <option>가까운 것을 선택하세요</option>
                        <option value="1">한달에 한번</option>
                        <option value="2">주에 한번</option>
                        <option value="3">일주일에 세번 이상</option>
                        <option value="4">거의 매일</option>
                    </select>
                </form>
            </div>
            <div id="morebox" onClick="location.href='lastresult'">
                <div id="moretext">나와 어울리는 게임은?</div>
            </div>
        </div>
    </div>
</form>
<script>
</script>
</body>
</html>