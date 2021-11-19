package com.spring.teamProject.moviePedia.controller;

import com.spring.teamProject.moviePedia.domain.Movies;
import com.spring.teamProject.moviePedia.service.MoviesService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Log4j2
@RequiredArgsConstructor
public class MoviesController {
    private final MoviesService moviesService;

    //상세조회화면 요청
    @GetMapping("/detail")
    public String detail(Movies movies) {
        return "moviePedia/detail";
    }

}
