package com.spring.teamProject.moviePedia.repository;

import com.spring.teamProject.moviePedia.domain.Member;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
public interface memberMapper {

    //회원가입
    public boolean join(Member member);




}
