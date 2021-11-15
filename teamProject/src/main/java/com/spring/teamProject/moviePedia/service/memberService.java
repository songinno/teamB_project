package com.spring.teamProject.moviePedia.service;

import com.spring.teamProject.moviePedia.domain.Member;
import com.spring.teamProject.moviePedia.repository.memberMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class memberService {

    private final memberMapper memberMapper;

    //회원가입 중간처리
    public void register(Member member) {
        memberMapper.join(member);

    }

}
