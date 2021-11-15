package com.spring.teamProject.moviePedia.Controller;

import com.spring.teamProject.moviePedia.domain.Member;
import com.spring.teamProject.moviePedia.service.memberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@Log4j2
@RequiredArgsConstructor
public class memberController {

    private final memberService memberService;

    //회원 가입하면 회원가입창에 나오게 해보기
    @PostMapping("/member/list")
    public String join(Member member, Model model) {
        System.out.println("/member/list POST -> " + member);
        model.addAttribute("mem", member);
        memberService.register(member);
        return "moviePedia/member-list";
    }



}
