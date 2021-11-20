package com.spring.teamproject4.movies.controller;


import com.spring.teamproject4.movies.service.MoviesService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@RestController
@RequiredArgsConstructor
@Log4j2
public class MoviesController {

    /*
        - 영화 목록요청
        - 영화 상세조회 요청

        - 영화 등록요청
        - 영화 삭제요청
        - 영화 수정요청
    */

    private final MoviesService moviesService;

    //영화 상제정보화면 요청
    @GetMapping("/detail")
    public String detail(Long movieNo, Model model) {
        log.info("/detail GET! " + movieNo);

        return "movies/detail";
    }
}
