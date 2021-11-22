package com.spring.teamproject4.movies.repository;

import com.spring.teamproject4.movies.domain.Movies;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@SpringBootTest
class MoviesMapperTest {

    @Autowired MoviesMapper moviesMapper;

    @Test
    void getMovieList() {
        System.out.println("========================");
        System.out.println(moviesMapper.getMovieList());
        System.out.println("========================");
    }

    @Test
    void getMovie() {
        System.out.println("========================");
        System.out.println(moviesMapper.getMovie(3L));
        System.out.println("========================");
    }

    @Test
    void insertMovie1() {
        Movies m1 = new Movies();
        m1.setMovieTitle("듄");
        m1.setMovieOpDay("2021-10-20");
        m1.setMovieActor("티모시 샬라메, 레베카 퍼거슨, 오스카 아이삭, 젠데이아, 조쉬 브롤린");
        m1.setMovieGenre("모험/드라마/SF");
        m1.setMovieCountry("미국,캐나다");
        m1.setMovieStory("10191년, 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 '듄'이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데… 위대한 자는 부름에 응답한다, 두려움에 맞서라, 이것은 위대한 시작이다!");
        m1.setMovieDirector("드니 빌뇌브");
        m1.setMovieImg("https://an2-img.amz.wtchn.net/image/v2/63456fa9804b8ba4729c5e61e4d540cb.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeU56a3hPREk1TXpBeE16VTRNalE1SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lkpxci1MZWF1Nmx3YTZLNVM4V2RUWkRhdDhqanNQWkUzQkloWXpaSnkyREU");
        m1.setMovieBgImg("https://an2-img.amz.wtchn.net/image/v2/4123fd0faaaa1b6ba203292a557e16a4.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1TOXROR2cyWTNCNGQyUjBjbXgzZVdFeGVuVmxaU0lzSW5GMVlXeHBkSGtpT2pnd0xDSjNhV1IwYUNJNk1USTRNSDAuM3JDMFF4YWxPbTZIa0lXT3NVNFVIMXh2YURpckVPdTZCZnlFbXlYN3Y3Yw");
        moviesMapper.insertMovie(m1);
    }

    @Test
    void insertMovie2() {
        Movies m1 = new Movies();
        m1.setMovieTitle("이터널스");
        m1.setMovieOpDay("2021-11-03");
        m1.setMovieActor("안젤리나졸리, 마동석");
        m1.setMovieGenre("모험/판타지");
        m1.setMovieCountry("미국");
        m1.setMovieStory("마블 스튜디오의 <이터널스>는 수 천년에 걸쳐 그 모습을 드러내지 않고 살아온 불멸의 히어로들이 <어벤져스: 엔드게임> 이후 인류의 가장 오래된 적 '데비안츠'에 맞서기 위해 다시 힘을 합치면서 벌어지는 이야기");
        m1.setMovieDirector("클로이 자오");
        m1.setMovieImg("https://an2-img.amz.wtchn.net/image/v2/5802f39e2dadd2eec855e26a0e59aea5.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU56TTFORE0xTnpreE16UXdNems0SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5LmJuZFBXclFhVFp4U3hrRzMxRTFXNmxRcXdjUm9ZaVRDX1c5WlhBMUNsTEE");
        m1.setMovieBgImg("https://an2-img.amz.wtchn.net/image/v2/2a2c878706c0e72a7a01c72fe15b34ce.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN5TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNeE5qRTJOVGs0TkRnNE56Y3lNVFkySWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqb3hNamd3ZlEucHRiQmo1aG5wZUtzY1NyRWhoWU9ncFV5RmVEb0FFMnVTZG5rUl9IU0U1MA");
        moviesMapper.insertMovie(m1);
    }


    @Test
    void deleteMovie() {
        moviesMapper.deleteMovie(5L);
    }

    @Test
    void updateMovie() {
        Movies movies = new Movies();
        movies.setMovieNo(1L);
        movies.setMovieTitle("장르만 로맨스");
        movies.setMovieOpDay("2021-11-17");
        movies.setMovieActor("류승룡, 오나라, 무진성, 김희원, 성유빈, 이유영");
        movies.setMovieGenre("코미디/드라마");
        movies.setMovieCountry("한국");
        movies.setMovieStory("매일매일 버라이어티한 그 작가의 사생활 개봉박두!\n" +
                "\n" +
                "쿨내진동 이혼부부\n" +
                "일촉즉발 비밀커플\n" +
                "주객전도 스승제자\n" +
                "알쏭달쏭 이웃사촌\n" +
                "\n" +
                "평범하지 않은 로맨스로 얽힌\n" +
                "이들의 사생활이 밝혀진다!");
        movies.setMovieDirector("조은지");
        movies.setMovieImg("https://an2-img.amz.wtchn.net/image/v2/ff693f2671c804e7e54fb0c47fc07073.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKaVlXTnJaM0p2ZFc1a0lqcDdJbklpT2pJMU5Td2laeUk2TWpVMUxDSmlJam95TlRWOUxDSmpjbTl3SWpwMGNuVmxMQ0pvWldsbmFIUWlPamN3TUN3aWNHRjBhQ0k2SWk5Mk1pOXpkRzl5WlM5cGJXRm5aUzh4TmpNMU9ERTJOVFl6TlRVNE5ETTVNRFl3SWl3aWNYVmhiR2wwZVNJNk9EQXNJbmRwWkhSb0lqbzBPVEI5Lm5wRGxvcHl1OTZvektROEU0ZUhuZW9QcGNsM3A5d2lIOTAzLTE5YVJhSVU");

        moviesMapper.updateMovie(movies);
    }
}