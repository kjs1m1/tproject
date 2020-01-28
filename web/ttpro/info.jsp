<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/idxstyle.css">
    <title>착한아이란?</title>
</head>
<body>
<div class="container">
    <%@ include file="layout/header.jsp"%>

    <div class="text-left" style="padding-left: 100px">
        <img src="https://drive.google.com/uc?export=view&id=1nVYc2lRu0GKniwbCBx-q_p7RMCYuHsAx"style="width: 700px;">
        <br>
        <b style="color: darkslategrey;font-weight: bold;font-size: 50px">01</b> <b style="font-weight: bold;font-size: 35px">1년 365일 자견관리 및 사후관리</b>
        <p style="font-weight: bold;font-size: 18px">
            착한아이에 있는 모든 자견들은 주기적으로 건강검진과 예방접종을 하고있으며 자견의<br>
            건강에 힘쓰고 최선을 다하고 있습니다
            <br><br>현 애완동물 피해규정인 15일을 철저하게 지키고있으며, 치사율 0%를 위해 1년 365일<br>
            자견의 건강관리와 사후관리에 노력하고 있습니다.</p>

        <b style="color: darkslategrey;font-weight: bold;font-size: 50px">02</b> <b style="font-weight: bold;font-size: 35px">합리적인 분양가 / 동물병원 의료비 지원</b>
        <p style="font-weight: bold;font-size: 18px">
            부담스러운 동물병원비와 비싼 분양가로 선뜻 분양하기 어려운 분들을 위해 저희 착한아이에서<br>
            분양하시는 분들께 각 지역마다 착한아이 연계병원을 이용하시면 진료비,<br>
            수술비, 접종비 등의 모든 의료비를 할인 지원해드리고 있으며,<br><br>
            자견의 외모와 비교하여 리적인 분양가로 안내드리고 있습니다.<br>
            10여년 이상 된 노하우를 통해 건강하고 예쁜 자견들을 많이 만나보실 수 있습니다.</p>

        <b style="color: darkslategrey;font-weight: bold;font-size: 50px">03</b> <b style="font-weight: bold;font-size: 35px">애완용품 서비스 증정</b>
        <p style="font-weight: bold;font-size: 18px">착한아이에서 하시는 모든 고객님들께 애완용품을 증정해드리고 있습니다.</p>

        <b style="color: darkslategrey;font-weight: bold;font-size: 50px">04</b> <b style="font-weight: bold;font-size: 35px">안전운송</b>
        <p style="font-weight: bold;font-size: 18px">가급적 직접 방문주셔서 자견을 직접 보시고 데려가시는 방법을 추천드리나 부득이하게<br>
            매장방문이 어려우신 분들을 위해 착한아이 안심운송기관에서 자택까지 안전하게 데려가며,<br>
            건강한 모습의 자견을 만나보실 수 있습니다.</p>
    </div>
    <%@ include file="layout/footer.jsp"%>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    // 상단 로그인 버튼
    $(function() {
        $('#mloginbtn').on('click',function(e) {location.href='login/login.jsp';});
    });
    // 회원가입 버튼
    $(function() {
        $('#joinbtn').on('click',function(e) {location.href='signup/signagree.jsp';});
    });
</script>
</body>
</html>
