package com.spring.teamproject4.members.domain;

import lombok.*;

import java.util.Date;
@Setter @Getter @ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Members {

    //회원 가입시 입력 데이터
    private String memName;
    private String memEmail;
    private String memPassword;


    // 자동 생성 데이터
    private Long memNo;
    private Date memJoinDate;

    private Auth auth; //+21.11.22




}//end class
