package com.spring.teamproject4.members.repository;

import com.spring.teamproject4.members.domain.Members;
import com.spring.teamproject4.members.dto.ModMembers;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MembersMapper {

    //회원가입
    public boolean join(Members members);


    //전체회원 조회
    public List<Members> findAll();

    //로그인 (이메일+비번 조회)
    Members checkMember(ModMembers modMembers);

    //좋아요기능






}
