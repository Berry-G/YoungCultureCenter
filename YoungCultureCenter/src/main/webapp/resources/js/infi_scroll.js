//페이지가 열리면 작동, timeoutchk.js랑 충돌 고려해서 window.onload 회피
window.addEventListener('load', function () {
    let bannerLeft=0;
    let firstImg = 1;
    let lastImg;
    let imgCnt;
    let $img = $(".infi-img");
    let $firstImg;
    let $lastImg;
    let totalCnt = 12;   //이미지 갯수 지정

    $img.each(function(){
        $(this).css("left",bannerLeft);
        bannerLeft += $(this).width()+5;          // 5px 간격으로 배너 처음 위치 시킴
        $(this).attr("id", "banner"+(++imgCnt));  // img에 id 속성 추가
    });

    if( imgCnt > totalCnt){                //배너 9개 이상이면 이동시킴

        lastImg = imgCnt;

        setInterval(function() {
            $img.each(function(){
                $(this).css("left", $(this).position().left-1); // 1px씩 왼쪽으로 이동
            });
            $firstImg = $("#banner"+firstImg);
            $lastImg = $("#banner"+lastImg);
            if($firstImg.position().left < -200) {    // 제일 앞에 배너 제일 뒤로 옮김
                $firstImg.css("left", $lastImg.position().left + $lastImg.width()+5 );
                firstImg++;
                lastImg++;
                if(lastImg > imgCnt) { lastImg=1; }   
                if(firstImg > imgCnt) { firstImg=1; }
            }
        }, 50);   //여기 값을 조정하면 속도를 조정할 수 있다.(위에 1px 이동하는 부분도 조정하면 

//깔끔하게 변경가능하다           

}

});
