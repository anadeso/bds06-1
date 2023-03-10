package com.devsuperior.movieflix.services;

import com.devsuperior.movieflix.dto.MovieDTO;
import com.devsuperior.movieflix.dto.ReviewDTO;
import com.devsuperior.movieflix.entities.Genre;
import com.devsuperior.movieflix.entities.Movie;
import com.devsuperior.movieflix.entities.Review;
import com.devsuperior.movieflix.repositories.GenreRepository;
import com.devsuperior.movieflix.repositories.MovieRepository;
import com.devsuperior.movieflix.repositories.ReviewRepository;
import com.devsuperior.movieflix.services.exceptions.ResourceNotFoundException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class MovieService {

    private static Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private MovieRepository repositoryMovie;

    @Autowired
    private ReviewRepository repositoryReview;

    @Autowired
    private GenreRepository genreRepository;

    @Transactional(readOnly = true)
    public Page<MovieDTO> findAllMovieGenre(Long id, Pageable pageable) {
        Genre genre = (id == 0) ? null : genreRepository.getOne(id);

        Page<Movie> movie = repositoryMovie.findMovieByGenre(genre, pageable);
        return movie.map(x -> new MovieDTO(x));
    }

    @Transactional(readOnly = true)
    public MovieDTO findById(Long id) {
        Optional<Movie> productObj = repositoryMovie.findById(id);
        Movie entity = productObj.orElseThrow(() -> new ResourceNotFoundException("Entity not Found"));
        return new MovieDTO(entity);
    }

    @Transactional(readOnly = true)
    public List<ReviewDTO> findReview(Long id) {
        List<Review> reviews = repositoryReview.findByReviewMovie(id);
        return reviews.stream().map(x -> new ReviewDTO(x)).collect(Collectors.toList());
    }
}
