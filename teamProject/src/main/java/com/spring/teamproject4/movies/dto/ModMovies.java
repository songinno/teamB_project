package com.spring.teamproject4.movies.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class ModMovies {

    private Long movieNo;
    private String movieTitle; //영화 제목
    private String movieOpDay; //영화 개봉일
    private String movieActor; //영화 출연진
    private String movieGenre; //영화 장르
    private String movieCountry; //영화 제작 국가
    private String movieStory; //영화 줄거리
    private String movieDirector; //영화 감독
    private String movieImg; //영화 이미지
    private String movieBgImg; // 영화 배경이미지

}
