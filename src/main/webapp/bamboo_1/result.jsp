<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
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
      .title-container {
        display: flex;
        width: 100vw;
        height : 150px;
        justify-content: center;
        /* background-color:#f1f1f1; */
        align-items: center;
        padding: 1rem;
        transition: all 0.2s cubic-bezier(0.76, -0.01, 0.23, 1);
      }
      .title {
        border: solid 1.5px #d8e267;
        border-radius: 50%;
        color: #d8e267;
        font-weight: lighter;
        padding: 2rem 4rem;
      }
      .main-container {
        display: flex;
        width: 100vw;
        justify-content: center;
        align-items: center;
        padding: 1rem;
      }
      .diary-container {
        width: 40vw;
        height: 90vh;
        background-color: #f6d8f7;
        filter: drop-shadow(10px 5px 4px #d8e267);
      }
      .diary-content {
        padding: 1rem;
      }
      .diary {
        color: #00584b;
        font-weight: lighter;
        font-size: 1.5rem;
        text-decoration: underline 1px #00584b;
      }
      .check-btn {
        position: absolute;
        right: 25%;
        top: 0%;
        /* transform: translateY(-50%); */
        font-size: 3rem;
        color: #d8e267;
        margin-right: 7rem;
        margin-top: 3rem;
        z-index: 1000;
        transition: all 0.2s cubic-bezier(0.76, -0.01, 0.23, 1);
      }
      .check-btn:hover {
        transform: scale(1.3);
        font-size: 3rem;
        color: #f6d8f7;
      }
      .scanner-screen-container{
      	position:absolute;
      	top:-100vh;
      	background-color:#00584b;
      	width:100vw;
      	height:100vh;
      	transition: all 10s ease-in;
      }
      .scanner-screen{
      	position: absolute;
      	bottom:0px;
      	width:100vw;
      	height:2vh;
      	opacity:0%;
      	background-color:#ffff00;
      	box-shadow: 0px 0px 40px 20px #ffff00;
      	transition: all 0.2s cubic-bezier(0.76, -0.01, 0.23, 1);
      }
      .final-container{
      	position: absolute;
      	width: 100vw;
      	height:100vh;
      	background-color:rgb(25, 25, 25);
      	transition: all 0.2s cubic-bezier(0.76, -0.01, 0.23, 1);
      	display:none;
      	opacity:0%;
      }
      .final-text{
      	position: absolute;
      	top: 50%;
      	left:50%;
      	transform: translate(-50%, -50%);
      	font-size: 2rem;
      	color:rgb(25, 25, 25);
      	background-color:#f6d8f7;
      	border: solid 2px #f6d8f7;
      	border-radius:30px;
      	padding: 3rem;
      }
    </style>
    <title>오늘 당신의 일기</title>
  </head>
  <body>
    <div class="main-screen-container">
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
    </div>
    <i class="check-btn fa-regular fa-circle-check"></i>
    <div class="scanner-screen-container">
    	<div class="scanner-screen">
    	</div>
    </div>
    <div class="final-container">
    	<p class="final-text">축하드립니다! <br> 당신 마음속 콩들이 모두 없어졌습니다!</p>
    </div>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
      integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <script>
      const check_btn = document.querySelector(".check-btn");
      const title_container = document.querySelector(".title-container");
      const title = document.querySelector(".title");
      const scanner_screen = document.querySelector(".scanner-screen-container")
      const scanner = document.querySelector(".scanner-screen");
      const final_container = document.querySelector(".final-container");
      const final_text = document.querySelector(".final-text");
      const main_screen = document.querySelector(".main-screen-container");
		
      check_btn.addEventListener("click", () => {
        console.log("clicked!");
        title_container.style.opacity = "0%";
        title.remove();
        check_btn.style.opacity = "0%";
        final_container.style.display = "block";
        
        setTimeout(function(){
        	title_container.style.height = "0px";
        	check_btn.remove();
        	scanner.style.opacity = "100%";
        }, 200);
        setTimeout(function(){
        	scanner_screen.style.top = "0vh";
        }, 300);
        setTimeout(function(){
        	main_screen.style.display = "none";
        	final_container.style.opacity = "100%";
        }, 11000);
      });
    </script>
  </body>
</html>
