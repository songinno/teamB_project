package com.spring.teamProject.moviePedia.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Log4j2
public class CommentsController {
    //#코멘트박스 화면
    @GetMapping("/comments")
    public String comments(Long memNo, Long commentsNo, Model model) {
        log.info("/comments GET!"  );
        return "moviePedia/comments";
    }
}
