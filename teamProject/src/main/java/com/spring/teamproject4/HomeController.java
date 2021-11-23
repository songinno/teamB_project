package com.spring.teamproject4;

import com.spring.teamproject4.movies.domain.Movies;
import com.spring.teamproject4.movies.service.MoviesService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

//@Controller
//@Log4j2
public class HomeController {

//    @Autowired MoviesService moviesService;
//
//    @GetMapping("/")
//    public String movies(Model model) {
//        log.info("moviesList main GET!");
//        List<Movies> moviesList = moviesService.getList();
//        model.addAttribute("mList", moviesList);
//
//        return "main/index";
//    }

}
