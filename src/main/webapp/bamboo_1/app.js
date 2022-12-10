console.log("read!")

const intro_screen_container = document.querySelector(".intro-screen-container")
const main_screen_container = document.querySelector(".main-screen-container")
const intro_title = document.querySelector(".intro-title")
const logo = document.querySelector(".logo-image")

window.onload = function(){
    setTimeout(function(){
        intro_screen_container.style.opacity = "100%"
    },200);
    // setTimeout(function(){
    //     intro_title.style.fontSize = "5rem";

    // },300)
    setTimeout(function(){
        intro_screen_container.style.opacity = "0%";
        main_screen_container.style.opacity = "100%";
    }, 3000);
    setTimeout(function(){
        intro_screen_container.style.display = "none"
    }, 4000)
}