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
      .title{
      width:inline-block;
    border: solid 1.5px #d8e267;
    border-radius: 50%;
    /* text-decoration: underline 1.2px #d8e267; */
    color: #d8e267;
    font-size: 2rem;
    font-weight: lighter;
    margin:0.5rem;
    padding: 2rem 4rem;
  }

      h2 {
        color: #d8e267;
        font-size: 2rem;
        font-weight: lighter;
        margin: 0.5rem;
      }
      h3 {
        font-size: 1.5rem;
        color: #d8e267;
        font-weight: lighter;
        margin: 0.5rem;
      }
      .answer-text {
        margin: 0.5rem;
        font-size: 1rem;
        font-weight: lighter;
        color: #f6d8f7;
      }
      .beansText {
        /* margin-left: 5rem; */
        background-color: #f6d8f7;
        line-break: auto;
        padding: 1rem;
        width: 40vw;
        height: 90vh;
        border: none;
        font-size: 1rem;
        font-weight: lighter;
        color: #00584b;
        filter: drop-shadow(10px 5px 4px #d8e267);
      }

      .submit-btn {
        border: solid 1px rgb(25, 25, 25);
        background-color: rgb(250, 250, 250);
        color: rgb(25, 25, 25);
        transition: all 0.2s cubic-bezier(0.76, -0.01, 0.23, 1);
        font-weight: lighter;
        margin: 0.5rem;
      }
      .submit-btn:hover {
        background-color: rgb(250, 250, 250);
        color: rgb(25, 25, 25);
      }
/*       .main-container {
        display: flex;
        justify-content: center;
        align-items: center;
      } */
      .title-container{
      	/* display:flex;
      	width: 100vw; */
      	justify-content: center;
        align-items: center;
        padding:1rem;
      }
      .text-container{
      	display:flex;
      	width:100vw;
      	justify-content: center;
        align-items: center;
      }
      .submit-container{
      	display:flex;
      	width:100vw;
      	justify-content: center;
        align-items: center;
      }
      .question-container{
      	display:flex;
      	justify-content: center;
        align-items: center;
      }
      .title-box{
  	display: flex;
  	justify-content: center;
  	align-items: center;
	}
    </style>
    <title>Questions</title>
  </head>
  <body>
    <div class="main-container">
    	
	    	<div class="title-container">
		  	<div class="title-box">
		  		<p class="title">오늘의 질문</p>
		  	</div>
		  	<div class="question-container">
		    <h3>${question}</h3>
		  	</div>
   	 	</div>
	  <div class="text-container">
	  	<form method="post" action="/bamboo_ver_1/result" id="diary-form">
      		<textarea class="beansText" name="diary" autofocus></textarea>
      	</form>
      </div>
      <div class="submit-container">
        <button class="submit-btn" type="submit" form="diary-form">작성완료</button>
      </div>
    </div>
  </body>
</html>
