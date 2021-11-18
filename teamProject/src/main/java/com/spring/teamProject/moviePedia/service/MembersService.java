package com.spring.teamProject.moviePedia.service;

import com.spring.teamProject.moviePedia.domain.Members;
import com.spring.teamProject.moviePedia.dto.ModMembers;
import com.spring.teamProject.moviePedia.repository.MembersMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MembersService {

    private final MembersMapper membersMapper;

    //회원가입 중간처리
    public void register(Members members) {
        membersMapper.join(members);

    }

    //전체회원조회 중간처리
    public List<Members> getList() {
        List<Members> membersList = membersMapper.findAll();
        return membersList;
    }

    //로그인 중간처리
    public Members check(ModMembers modMembers) {
        return membersMapper.checkMember(modMembers);
    }


}
