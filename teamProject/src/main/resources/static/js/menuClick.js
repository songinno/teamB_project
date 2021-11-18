
// 박스오피스 메뉴 클릭 이벤트
function boxMenuClickMode() {
    const $boxUlDiv = document.querySelector("ul")
    const $showDiv = document.getElementById('showing');
    const $yetDiv = document.getElementById('screenYet');
    console.log("하하");

    $showDiv.classList.add('none');
    $yetDiv.classList.add('none');
    $boxUlDiv.classList.add('drop');
}

// 현재상영작 메뉴 클릭 이벤트


// 상영예정작 메뉴 클릭 이벤트


(function(){
    const $boxOffice = document.getElementById('boxOffice');
    $boxOffice.addEventListener('click', e => {
        e.preventDefault();
        boxMenuClickMode();

    });
});