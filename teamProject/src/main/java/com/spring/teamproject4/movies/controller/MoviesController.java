package com.spring.teamproject4.movies.controller;


import com.spring.teamproject4.movies.domain.Movies;
import com.spring.teamproject4.movies.dto.ModMovies;
import com.spring.teamproject4.movies.service.MoviesService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
//@RestController
@RequiredArgsConstructor
@Log4j2
public class MoviesController {

    /*
        - 영화 목록요청 : (공백) : GET
        - 영화 상세조회 요청 : /detail : GET

        ===== 관리자 페이지 =====
        - 영화 목록요청: admin/movies/list : GET
        - 영화 상세화면 요청 : admin/movies/detail : GET
        - 영화 등록요청 : admin/movies/upload : POST
        - 영화 삭제요청 : admin/movies/delete : GET
        - 영화 수정화면요청 : admin/movies/modify : GET
        - 영화 수정요청 : admin/movies/modify : POST
    */

    private final MoviesService moviesService;

    //영화 목록 요청
    //메인페이지를 jsp페이지로 변경.
    @GetMapping("")
    public String movies(Model model) {
        log.info("moviesList main GET!");
        List<Movies> moviesList = moviesService.getList();
        model.addAttribute("mList", moviesList);

        return "main/index";
    }

    //영화 상제정보화면 요청
    @GetMapping("/detail")
    public String detail(Long movieNo, Model model) {
        log.info("/detail GET! -" + "movieNo: " + movieNo);
        Movies movie = moviesService.get(movieNo);
        model.addAttribute("movie", movie);
        return "movies/detail";
    }

    //=================관리자 페이지===================

    // - 영화 목록요청: /admin/movies/list : GET
    @GetMapping("/admin/movies/list")
    public String adList(Model model) {
        log.info("moviesList main GET!");
        List<Movies> moviesList = moviesService.getList();
        model.addAttribute("mList", moviesList);
        return "admin/admin-movies/movies-list";
    }

    // - 영화 상세화면 요청 : /admin/movies/detail : GET
    @GetMapping("/admin/movies/detail")
    public String adDetail(Long movieNo, Model model) {
        log.info("admin/movies/detail POST! - " + movieNo);
        Movies movie = moviesService.get(movieNo);
        model.addAttribute("adMovie", movie);
        return "admin/admin-movies/movies-detail";
    }

    // - 영화 등록화면 요청 : admin/movies/upload : GET
    @GetMapping("/admin/movies/upload")
    public String adUpload() {
        log.info("admin/movies/upload GET!");
        return "admin/admin-movies/movies-write";
    }

    // - 영화 등록요청 : /admin/movies/upload : POST
    @PostMapping("/admin/movies/upload")
    public String adUpload(Movies movies){
        log.info("admin/movies/upload POST!");
        moviesService.insert(movies);
        return "redirect:/admin/movies/list";
    }

    // - 영화 삭제요청 : /admin/movies/delete : GET
    @GetMapping("/admin/movies/delete")
    public String adDelete(Long movieNo) {
        log.info("admin/movies/delete POST! - " + movieNo);
        moviesService.remove(movieNo);
        return "redirect:/admin/movies/list";
    }

    // - 영화 수정화면요청 : /admin/movies/modify : GET
    @GetMapping("/admin/movies/modify")
    public String adModify(Long movieNo, Model model) {
        log.info("admin/movies/modify GET! - " + movieNo);
        Movies movies = moviesService.get(movieNo);
        model.addAttribute("movie", movies);
        return "admin/admin-movies/movies-modify";
    }


    // - 영화 수정요청 : /admin/movies/modify : POST
    @PostMapping("/admin/movies/modify")
    public String modify(ModMovies movie) {
        log.info("admin/movies/modify POST! - " + movie);
        moviesService.modify(movie);
        return "redirect:/admin/movies/detail?movieNo=" + movie.getMovieNo();
    }


}
