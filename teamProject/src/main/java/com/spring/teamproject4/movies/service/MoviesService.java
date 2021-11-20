package com.spring.teamproject4.movies.service;

import com.spring.teamproject4.movies.domain.Movies;
import com.spring.teamproject4.movies.dto.ModMovies;
import com.spring.teamproject4.movies.repository.MoviesMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor //생성자 자동 주입
@Service
@Log4j2
public class MoviesService {

    private final MoviesMapper moviesMapper; //의존관계

    //영화 목록 중간처리
    public List<Movies> getList() {
        List<Movies> movieList = moviesMapper.getMovieList();
        return movieList;
    }

    //영화 상세조회 중간처리
    public Movies get(Long movieNo) {
        return moviesMapper.getMovie(movieNo);
    }
    
    //영화 등록 중간처리
    public boolean insert(Movies movies) {
        return moviesMapper.insertMovie(movies);
    }
    
    //영화 삭제 중간처리
    public void remove(Long movieNo) {
        moviesMapper.deleteMovie(movieNo);
    }
    
    //영화 수정 중간처리
    public boolean modify(Movies movie) {
        moviesMapper.updateMovie(movie);
        return true;
    }


}
