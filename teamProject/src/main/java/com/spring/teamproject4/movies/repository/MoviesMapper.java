package com.spring.teamproject4.movies.repository;

import com.spring.teamproject4.movies.domain.Movies;
import com.spring.teamproject4.movies.dto.ModMovies;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MoviesMapper {
    
    //영화 목록 조회
    List<Movies> getMovieList();
    
    //영화 상세 조회
    Movies getMovie(Long movieNo);
    
    //영화 등록
    boolean insertMovie(Movies movies);
    
    //영화 삭제
    boolean deleteMovie(Long movieNo);
    
    //영화 수정
    boolean updateMovie(Movies movie);
    
    
}
