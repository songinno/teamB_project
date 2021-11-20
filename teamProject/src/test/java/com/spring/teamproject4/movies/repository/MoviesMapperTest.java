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
        Movies m1 = new Movies
                ("관상", "2021.11.01", "송강호, 조정석", "드라마",
                        "한국", "관상가 양반들의 관상놀이", "조감독");

        moviesMapper.insertMovie(m1);
    }

    @Test
    void insertMovie2() {
        Movies m2 = new Movies
                ("지울영화", "2000.01.01", "배우1,배우2", "판타지",
                        "미국", "지울거지울겅지울거지울거", "감독1");

        moviesMapper.insertMovie(m2);
    }

    @Test
    void deleteMovie() {
        moviesMapper.deleteMovie(5L);
    }

    @Test
    void updateMovie() {
        Movies movies = new Movies();
        movies.setMovieNo(4L);
        movies.setMovieTitle("관상_fix");
        movies.setMovieOpDay("2021.11.01");
        movies.setMovieActor("송강호, 조정석, 이종석");
        movies.setMovieGenre("쓰릴러");
        movies.setMovieCountry("대한민국");
        movies.setMovieStory("스토리 수정수정");
        movies.setMovieDirector("강감독");

        moviesMapper.updateMovie(movies);
    }
}