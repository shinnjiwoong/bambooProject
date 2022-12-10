<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	* {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Helvetica";
      }
      body {
        font-weight: lighter;
        background-color: #00584b;
      }
      .title-container{
      	display:flex;
      	width:100vw;
      	justify-content : center;
      	align-items: center;
      	padding:1rem;
      }
      .title{
      	color:#d8e267;
      	font-weight:lighter;
      	
      }
      .main-container{
      	display:flex;
      	width:100vw;
      	justify-content : center;
      	align-items: center;
      	padding:1rem;
      }
      .diary-container{
      	width:40vw;
      	height:90vh;
      	background-color: #f6d8f7;
      	filter: drop-shadow(20px 5px 4px #d8e267);
      }
      .diary-content{
      	padding:1rem;
      }
      .diary{
      	color:#00584b;
      	font-weight:lighter;
      	font-size : 1.5rem;
      	text-decoration : underline 1px #00584b;
      }
</style>
<title>당신의 오늘 일기</title>
</head>
<body>
	<div class="title-container">
		<h2 class="title">오늘 당신의 일기</h2>
	</div>
	<div class="main-container">
		<div class="diary-container">
			<div class="diary-content">
				<p class="diary">${diary}</p>
			</div>
		</div>
	</div>
</body>
</html>