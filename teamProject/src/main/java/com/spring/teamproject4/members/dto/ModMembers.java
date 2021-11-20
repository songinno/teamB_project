package com.spring.teamproject4.members.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class ModMembers {

    //로그인할 때, 회원 정보 맞나 확인하려고 만듦.
    private String memEmail;
    private String memPassword;


    public ModMembers(String memEmail, String memPassword) {
        System.out.println("modMembers 객체 생성됨!");
        this.memEmail = memEmail;
        this.memPassword = memPassword;
    }
}
