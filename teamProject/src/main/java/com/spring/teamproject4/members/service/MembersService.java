package com.spring.teamproject4.members.service;

import com.spring.teamproject4.members.domain.Members;
import com.spring.teamproject4.members.domain.LoginFlag;
import com.spring.teamproject4.members.dto.ModMembers;
import com.spring.teamproject4.members.repository.MembersMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

import static com.spring.teamproject4.members.domain.LoginFlag.*;

@Service
@RequiredArgsConstructor
public class MembersService {

    private final MembersMapper membersMapper;

    //전체회원조회 중간처리
    public List<Members> getList() {
        List<Members> membersList = membersMapper.findAll();
        return membersList;
    }

    //로그인 중간처리(++21.11.23)
    public LoginFlag check(ModMembers member) {
        Members mem = membersMapper.getMember(member.getMemEmail());
        if (mem != null) {
            //일단 이메일은 있음
            //DB_PW
            String dbPw = mem.getMemPassword();

            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            return encoder.matches(member.getMemPassword(), dbPw) ? SUCCESS : WRONG_PW;
        } else {
            //이메일도 없음
            return NO_EMAIL;
        }
    }
    //단일회원정보 가져오기(++21.11.23)
    public Members getMember(ModMembers member) {
        return membersMapper.getMember(member.getMemEmail());
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
