<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스파클</title>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/main_c.css">
</head>
<body>
    <div class="wrap">
    <jsp:include page="header.jsp"></jsp:include>
        <div class="contents">
            <div class="ban">
                <img src="./img/ban1.jpg" alt="">
            </div>
            <li id="point_txt" style="font-weight: 550; font-size: 40px; text-align: center; margin-top: 30px;">SPAKEL</li>
            <li id="point_txt" style="font-weight: 550; font-size: 20px; text-align: center; margin-top: 10px;">깨끗하고 믿을 수 있는 물을 위해 끊임없이 노력합니다.</li>
            <div class="product">
                <ul>
                    <li>
                        <a href="#">
                            <img src="./img/sp01.jpg" alt="">
                        </a>
                        <br>
                        <span id="point_txt">상품소개</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sp02.jpg" alt="">
                        </a>
                        <br>
                        <span id="point_txt">수질분석표</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sp03.jpg" alt="">
                        </a>
                        <br>
                        <span id="point_txt">수원지정보</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/sp04.jpg" alt="">
                        </a>
						<br>
                        <span id="point_txt">생산공정</span>
                    </li>
                </ul> 
            </div>
        </div>
       <jsp:include page="footer.jsp"></jsp:include>
    </div>   