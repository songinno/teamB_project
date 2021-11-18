package com.spring.teamProject.moviePedia.repository;

import com.spring.teamProject.moviePedia.domain.Members;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MembersMapper {

    //회원가입
    public boolean join(Members members);


    //전체회원 조회
    public List<Members> findAll();

    //로그인
    Members findMember(String memEmail, String memPassword);




}
