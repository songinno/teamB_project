package com.spring.teamProject.moviePedia.service;

import com.spring.teamProject.moviePedia.repository.MoviesMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MoviesService {

    private final MoviesMapper moviesMapper;



}
