<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스파클-관리자모드</title>
<link rel="stylesheet" href="./css/admin_common.css">
<link rel="stylesheet" href="./css/admin_main.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function() {
        $("main_btn_list li").on("hover", function(){
            $("main_btn_box li a").css({"color":"#fff"
                                       ,"background":"#363cff"});
        });
    });
</script>
</head>
<body>
    <div class="wrap">
        <jsp:include page="admin_header.jsp"></jsp:include>
        <div class="contents">
            <div class="con_wrap">
                <h2>관리자 페이지 메인</h2>
                <h4>관리자님, 원하시는 작업메뉴를 선택해주세요</h4>
                <ul class="main_btn_list">
                    <li>
                        <span>회원관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">회원목록조회</a></li>
                            <li><a href="#">회원권한수정</a></li>
                            <li><a href="#">제제회원관리</a></li>
                            
                        </ul>
                    </li>
                    <li>
                        <span>제품관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">제품목록조회</a></li>
                            <li><a href="#">제품 등록</a></li>
                            <li><a href="#">제품 수정</a></li>
                            <li><a href="#">제품 삭제</a></li>
                        </ul>
                    </li>
                    <li>
                        <span>게시판관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">공지사항 관리</a></li>
                            <li><a href="#">이벤트 관리</a></li>
                            <li><a href="#">리뷰 관리</a></li>
                        </ul>
                    </li>
                    <li>
                        <span>CS관리</span>
                        <ul class="main_btn_box">
                            <li><a href="#">1:1문의 관리</a></li>
                            <li><a href="#">Q&A관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        <jsp:include page="admin_footer.jsp"></jsp:include>
    </div>
</body>
</html>
