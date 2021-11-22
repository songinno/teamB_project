package com.spring.teamproject4.members.controller;

import com.spring.teamproject4.members.domain.Members;
import com.spring.teamproject4.members.dto.ModMembers;
import com.spring.teamproject4.members.service.MembersService;
import com.spring.teamproject4.movies.domain.Movies;
import com.spring.teamproject4.movies.service.MoviesService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Log4j2
@Controller
public class MembersController {

    private final MembersService membersService;

    public MembersController(MembersService membersService) {
        this.membersService = membersService;
    }

    //moviesService 쓰고 싶음..
//    private MoviesService moviesService;
//
//    public MembersController(MoviesService moviesService) {
//        this.moviesService = moviesService;
//    }

    //-------------------------------------------------------------------------------
    //# 박스오피스 화면
    @GetMapping("/movie/boxoffice")
    public String boxoffice() {
        log.info("/movie/boxoffice GET!");
        return "main/boxoffice";
    }

    //#회원가입 화면
    @GetMapping("/join")
    public String join() {
        log.info("/join GET!");

        return "members/join";
    }

    //#회원가입 post
    @PostMapping("/join")
    public String joinPost(Members members, Model model) {
        membersService.register(members);
        log.info("/join POST!" + members);
        model.addAttribute("mem", members);
        return "members/join-result";
    }


    //#로그인 화면
    @GetMapping("/login")
    public String login(String result, Model model) {
        log.info("/login GET!");
        model.addAttribute("result", result);
        return "members/login";
    }

    //#로그인 (이메일 AND 비밀번호 -> 회원 확인)
    @PostMapping("/login-check")
    public String loginPost (ModMembers modMembers, Model model) {
        log.info("/login-check POST! " + modMembers);
        Members member = membersService.check(modMembers);
        model.addAttribute("mem", member);

//        List<Movies> moviesList = moviesService.getList();
//        model.addAttribute("mList", moviesList);

        //회원 검증
        try {
            if ((modMembers.getMemEmail()).equals("admin@moviepedia.com") && (modMembers.getMemPassword()).equals("m1234")) {
                System.out.println("관리자 계정 로그인!");
                return "admin/admin-page";
            } else {
                boolean emailBoolean = (modMembers.getMemEmail()).equals(member.getMemEmail());
                log.info(emailBoolean);
                boolean pwBoolean = (modMembers.getMemPassword()).equals(member.getMemPassword());
                log.info(pwBoolean);
            }
        } catch (Exception NullPointerException) {
            System.out.println("널포인트다");
            return "redirect:/login?result=fail";
        }
        return "main/login-index";
    }

    //=================관리자 페이지===================
    //#전체회원 조회화면
    @GetMapping("/admin/members/list")
    public String allMembers(Model model) {
        log.info("/allMembers GET!");
        List<Members> list = membersService.getList();
        model.addAttribute("member", list);
        return "admin/admin-members/m-list";
    }



}//end class Controller
