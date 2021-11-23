package com.spring.teamproject4.grade.domain;

import com.spring.teamproject4.members.domain.Members;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter @Setter @ToString
public class Grade {
    //자동 생성 데이터 (db에서 끌고올놈들)
    private Long gradeNo;
    private Long movieNo; // 코멘트 단 영화의 번호
    private Date gradeDate;
    //직접 작성할 친구들
    private double grade; // 별점
    private String gradeComment;
    private String gradeWriter;


}
