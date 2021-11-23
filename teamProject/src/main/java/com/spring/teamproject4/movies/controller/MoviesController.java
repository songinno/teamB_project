package com.spring.teamproject4.movies.controller;


import com.spring.teamproject4.common.paging.Page;
import com.spring.teamproject4.common.paging.PageMaker;
import com.spring.teamproject4.members.domain.Members;
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

import javax.servlet.http.HttpSession;
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

    //메인화면 요청
    @GetMapping("")
    public String movies(Model model, Page page) {
        log.info("moviesList main GET!");
        List<Movies> moviesList = moviesService.getList(page);
        model.addAttribute("mList", moviesList);
        model.addAttribute("pageInfo", new PageMaker(page, moviesService.getCount(page)));


        return "main/index";
    }

    //영화 상제정보화면 요청
    @GetMapping("/detail")
    public String detail(Long movieNo, Model model, HttpSession session) {
        log.info("/detail GET! -" + "movieNo: " + movieNo);
        Movies movie = moviesService.get(movieNo);
        model.addAttribute("movie", movie);
        Members member = (Members) session.getAttribute("loginUser");
//        if (member == null) {
//            return "redirect:/login";
//        }
        return "movies/detail";
    }

    // - 영화 검색 요청
    @GetMapping("/search")
    public String search(Model model, Page page) {
        log.info("moviesList main GET!");
        List<Movies> moviesList = moviesService.getList(page);
        model.addAttribute("mList", moviesList);
        model.addAttribute("pageInfo", new PageMaker(page, moviesService.getCount(page)));
        return "movies/search";
    }

    //=================관리자 페이지===================

    // - 영화 목록요청: /admin/movies/list : GET
    @GetMapping("/admin/movies/list")
    public String adList(Model model, Page page) {
        log.info("moviesList main GET!");
        List<Movies> moviesList = moviesService.getList(page);
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
