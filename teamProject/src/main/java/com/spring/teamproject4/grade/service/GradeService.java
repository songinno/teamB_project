package com.spring.teamproject4.grade.service;

import com.spring.teamproject4.common.paging.Page;
import com.spring.teamproject4.common.paging.PageMaker;
import com.spring.teamproject4.grade.domain.Grade;
import com.spring.teamproject4.grade.repository.GradeMapper;
import com.spring.teamproject4.members.domain.Members;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class GradeService {
    private final GradeMapper gradeMapper;

    //댓글 목록 조회
    public List<Grade> getList(Long movieNo) {
        List<Grade> list = gradeMapper.getList(movieNo);
        return list;
    }

    //댓글 개별 조회
    public Grade get(Long gradeNo) {
        return gradeMapper.read(gradeNo);
    }

    //댓글 쓰기 중간처리
    public boolean write(Grade grade) {
        return gradeMapper.save(grade);
    }

    //댓글 수정 중간처리
    public boolean modify(Grade grade) {
        return gradeMapper.update(grade);
    }
    //댓글 삭제 중간처리
    public boolean remove(Long gradeNo) {
        return gradeMapper.delete(gradeNo);
    }

}
