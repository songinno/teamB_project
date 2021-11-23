package com.spring.teamproject4.members.repository;

import com.spring.teamproject4.members.domain.Auth;
import com.spring.teamproject4.members.domain.Members;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class MembersMapperTest {

    @Autowired MembersMapper membersMapper;

    @Test
    @DisplayName("비밀번호가 인코딩된 상태로 회원가입에 성공해야함")
    void joinTEST() {
        //원본 비밀번호
        String rawpassword = "o1234";
        //비밀번호 암호화 인코딩
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        String encodePassword = encoder.encode(rawpassword);

        Members member = Members.builder().memName("오승환").memEmail("osh1703@naver.com").memPassword(encodePassword).build();
        membersMapper.join(member);
    }

    @Test
    @DisplayName("로그인 검증을 정확하게 수행해야 함.")
    void loginTest() {
        //로그인 시도 이메일, 비번
        String inputEmail = "osh1703@naver.com";
        String inputPw = "o1234";

        //로그인 시도 이메일을 기준으로 회원정보 조회
        Members member = membersMapper.getMember(inputEmail);
        if (member != null) {
            //db에 저장된 비번 (암호화된 상태임)
            String dbPw = member.getMemPassword();
            //암호화된 비번을 평문으로 디코딩 후 비교
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            if (encoder.matches(inputPw, dbPw)) {
                System.out.println("로그인 성공!");
            } else {
                System.out.println("비번 틀림");
            }
        } else {
            System.out.println("가입되지 않은 이메일입니다.");
        }
    }

    @Test
    @DisplayName("(회원가입시) 이메일 중복확인에 성공해야 함.")
    void duplicateTest() {
        String inputEmail = "admin@moviepedia.com";

        int result = membersMapper.isDuplicateEmail(inputEmail);
        assertTrue(result == 1);


    }
}