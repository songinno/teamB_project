package com.spring.teamproject4.grade.repository;

import com.spring.teamproject4.common.paging.Page;
import com.spring.teamproject4.grade.domain.Grade;
import com.spring.teamproject4.grade.dto.ModGrade;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GradeMapper {
    //댓글 입력
    boolean save(Grade grade);

    //댓글 수정
    boolean update(Grade grade);

    //댓글 삭제
    boolean delete(Long gradeNo);

    //댓글 개별조회
    Grade read(Long gradeNo);

    //댓글 목록조회 (원본글번호로)
    List<Grade> getList(Long movieNo);

}
