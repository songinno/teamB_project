package com.spring.teamProject.moviePedia.controller;

import com.spring.teamProject.moviePedia.domain.Members;
import com.spring.teamProject.moviePedia.service.MembersService;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Log4j2
@Controller
public class MembersController {

    private final MembersService membersService;

    public MembersController( MembersService membersService) {
        this.membersService = membersService;
    }

    //# 박스오피스 화면
    @GetMapping("/movie/boxoffice")
    public String boxoffice() {
        return "movie/boxoffice";
    }

    //#회원가입 화면
    @GetMapping("/join")
    public String join() {
        log.info("/join GET!");

        return "moviePedia/join";
    }

    //#회원가입 post
    @PostMapping("/join")
    public String joinPost(Members members, Model model) {
        membersService.register(members);
        log.info("/join POST!" + members);
        model.addAttribute("mem", members);
        return "moviePedia/test";
    }

    //#전체회원 조회화면
    @GetMapping("/allMembers")
    public String allMembers(Model model) {
        log.info("/allMembers GET!");
        List<Members> list = membersService.getList();
        model.addAttribute("member", list);
        return "moviePedia/test2";
    }

    //#로그인 화면
    @GetMapping("/login")
    public String login() {
        log.info("/login GET!");
        return "moviePedia/login";
    }

    //#로그인 (이메일 AND 비밀번호 -> 회원 확인)
    @PostMapping("/login-check")
    public String loginPost (String memEmail, String memPassword, Model model) {
        log.info("/login-check Post! " + "email: " + memEmail + ", pw: " + memEmail);
        Members member = membersService.getMember(memEmail, memPassword);

        model.addAttribute("mem", member);
        //로그인 검증



        return "";
    }

}//end class Controller
