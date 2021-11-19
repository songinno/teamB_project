package com.spring.teamProject.moviePedia.controller;

import com.spring.teamProject.moviePedia.domain.Members;
import com.spring.teamProject.moviePedia.domain.Movies;
import com.spring.teamProject.moviePedia.dto.ModMembers;
import com.spring.teamProject.moviePedia.service.MembersService;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
        log.info("/movie/boxoffice GET!");
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
    public String login(String result, Model model) {
        log.info("/login GET!");
        model.addAttribute("result", result);
        return "moviePedia/login";
    }

    //#로그인 (이메일 AND 비밀번호 -> 회원 확인)
    @PostMapping("/login-check")
    public String loginPost (ModMembers modMembers, Model model) {
        log.info("/login-check POST! " + modMembers);
        Members member = membersService.check(modMembers);
        model.addAttribute("mem", member);

        //회원 검증
        try {
            boolean emailBoolean = (modMembers.getMemEmail()).equals(member.getMemEmail());
            log.info(emailBoolean);
            boolean pwBoolean = (modMembers.getMemPassword()).equals(member.getMemPassword());
            log.info(pwBoolean);
            //▽ 이메일,비번 맞는지 검증할 필요도 없음. △여기서 이미 둘중 하나 틀리면 boolean타입이랑 null이랑 비교를 해서 NullPointerException 뜸.
            /*
            if (emailBoolean) {
                log.info("이메일 일치함");
                if (pwBoolean) {
                    log.info("비번도 일치함");
                    return "/moviePedia/success";
                } else {
                    log.info("비번이 틀림");
                    return "/moviePeida/fail";
                }
            } else {
                log.info("이메일 틀림");
                return "/moviePeida/fail";
            }
            */
        } catch (Exception NullPointerException) {
            System.out.println("널포인트다");
            return "redirect:/login?result=fail";
        }
        return "/moviePedia/main";
    }



}//end class Controller
