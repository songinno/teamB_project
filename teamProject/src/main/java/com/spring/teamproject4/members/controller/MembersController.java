package com.spring.teamproject4.members.controller;

import com.spring.teamproject4.members.domain.Members;
import com.spring.teamproject4.members.domain.LoginFlag;
import com.spring.teamproject4.members.dto.ModMembers;
import com.spring.teamproject4.members.service.MembersService;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
        membersService.signUp(members);
        log.info("/join POST!" + members);
        model.addAttribute("mem", members);
        return "members/join-result";
    }

    //(+21.11.23) 이메일 중복확인 비동기 통신요청
    @GetMapping("/check")
    @ResponseBody
    public boolean check(String checkEmail) {
        log.info("/check 비동기 요청 GET! " + checkEmail);

        return membersService.isDuplicateEmail(checkEmail);
    }


    //#로그인 화면
    @GetMapping("/login")
    public String login(String result) {
        log.info("/login GET!");
        return "members/login";
    }

    //#로그인 검증
    @PostMapping("/login-check")
    public String loginCheck(ModMembers member, HttpSession session, Model model) {
        log.info("/login-check POST! " + member);

        LoginFlag flag = membersService.check(member);
        log.info(flag);
        model.addAttribute("flag", flag);

        if (flag == LoginFlag.SUCCESS) {
            session.setAttribute("loginUser", membersService.getMember(member));
            return "redirect:/";
        }
        return "members/login";
    }

    //=================관리자 페이지===================
    //#전체회원 조회화면
    @GetMapping("/admin/members/list")
    public String allMembers(Model model) {
        log.info("/allMembers GET!");
        List<Members> list = membersService.getList();
        model.addAttribute("member", list);
        return "admin/admin-members/members-list";
    }



}//end class Controller
