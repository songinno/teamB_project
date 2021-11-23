package com.spring.teamproject4.members.service;

import com.spring.teamproject4.members.domain.Members;
import com.spring.teamproject4.members.dto.ModMembers;
import com.spring.teamproject4.members.repository.MembersMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MembersService {

    private final MembersMapper membersMapper;

    //회원가입 중간처리
//    public void register(Members members) {
//        membersMapper.join(members);
//
//    }

    //전체회원조회 중간처리
    public List<Members> getList() {
        List<Members> membersList = membersMapper.findAll();
        return membersList;
    }

    //로그인 중간처리
    public Members check(ModMembers modMembers) {
        return membersMapper.checkMember(modMembers);
    }

    //(+21.11.23) 회원가입 기능 중간처리
    //이메일 중복체크
    public boolean isDuplicateEmail(String inputEmail) {
        return membersMapper.isDuplicateEmail(inputEmail) == 1; // 1 나오면 중복
    }

    //회원가입 중간처리 (평문 비밀번호 암호화)
    public void signUp(Members members) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodedPw = encoder.encode(members.getMemPassword());
        members.setMemPassword(encodedPw);

        membersMapper.join(members);

    }


}
