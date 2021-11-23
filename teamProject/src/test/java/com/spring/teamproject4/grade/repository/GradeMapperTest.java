package com.spring.teamproject4.grade.repository;

import com.spring.teamproject4.grade.domain.Grade;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest
class GradeMapperTest {

    @Autowired GradeMapper gradeMapper;

    @Test
    @DisplayName("코멘트 50개를 정상적으로 삽입해야한다.")
    void save() {
        for (int i = 0; i < 50; i++) {
            Grade grade = new Grade();
            grade.setGradeWriter("인간" + i);
            grade.setGrade(4.5);
            grade.setGradeComment("듄에 테스트 댓글" + i);
            grade.setMovieNo(2L);

            gradeMapper.save(grade);
        }
    }

    @Test
    @DisplayName("댓글 수정")
    void update() {
        Grade grade = new Grade();
        grade.setGradeNo(4L);
        grade.setGradeComment("댓글 수정수정수정");
        gradeMapper.update(grade);
    }

    @Test
    void delete() {
        gradeMapper.delete(5L);
    }

    @Test
    void read() {
        Grade read = gradeMapper.read(1L);
        System.out.println("read = " + read);
    }

    @Test
    void getList() {
        List<Grade> list = gradeMapper.getList(3L);
        for (Grade grade : list) {
            System.out.println("grade = " + grade);
        }
    }



}