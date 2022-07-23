/////////*********** Carousel *********/

const thumbnail = document.getElementsByClassName("slide-thumbnail");
const carousel = document.getElementById("slider");
const  leftbtn = document.querySelector("#slide-left");
const  rightbtn = document.querySelector("#slide-right");

leftbtn.addEventListener("click", () => {
    carousel.scrollLeft -= 125;
});

rightbtn.addEventListener("click", () => {
    carousel.scrollLeft += 125;
});

const maxScrollLeft = carousel.scrollWidth - carousel.clientWidth;

function autoPlay(){
    if(carousel.scrollLeft > (maxScrollLeft - 1)) {
        carousel.scrollLeft -= maxScrollLeft;
    } else {
        carousel.scrollLeft += 1.5;
    }
}

let play = setInterval(autoPlay, 50);

for (let i = 0; i < thumbnail.length; i++) {
    thumbnail[i].addEventListener("mouseover", () => {
        clearInterval(play)
    })
    thumbnail[i].addEventListener("mouseout", () => {
        return play = setInterval(autoPlay, 50);
    })
}


/////////*********** carouselTwo *********/

const thumbnailTwo = document.getElementsByClassName("slide-thumbnail-two");
const carouselTwo = document.getElementById("slider-two");
const  leftbtnTwo = document.getElementById("slide-left-two");
const  rightbtnTwo = document.getElementById("slide-right-two");

leftbtnTwo.addEventListener("click", () => {
    carouselTwo.scrollLeft -= 125;
});

rightbtnTwo.addEventListener("click", () => {
    carouselTwo.scrollLeft += 125;
});

const maxScrollLeftTwo = carouselTwo.scrollWidth - carouselTwo.clientWidth;

function autoPlayTwo(){
    if(carouselTwo.scrollLeft > (maxScrollLeftTwo - 1)) {
        carouselTwo.scrollLeft -= maxScrollLeftTwo;
    } else {
        carouselTwo.scrollLeft += 1.5;
    }
}

let playTwo = setInterval(autoPlayTwo, 50);

for (let j = 0; j < thumbnailTwo.length; j++) {
    thumbnailTwo[j].addEventListener("mouseover", () => {
        clearInterval(playTwo)
    })
    thumbnailTwo[j].addEventListener("mouseout", () => {
        return playTwo = setInterval(autoPlay, 50);
    })
}