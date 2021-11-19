package com.spring.teamProject.moviePedia.domain;

import java.util.Date;

public class Grade {

    //    private Grades grades; // 열거형으로 표현하기 힘듦. 우선 double로
    private double grade;
    private String gradeComment;

    //자동생성
    private Long gradeNo;
    private Date gradeDate;

    //참조 데이터
    private Long memNo;
    private Long movieNo;




}
