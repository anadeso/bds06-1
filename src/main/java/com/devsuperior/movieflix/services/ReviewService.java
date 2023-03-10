package com.devsuperior.movieflix.services;

import com.devsuperior.movieflix.dto.ReviewDTO;
import com.devsuperior.movieflix.entities.Review;
import com.devsuperior.movieflix.entities.User;
import com.devsuperior.movieflix.repositories.MovieRepository;
import com.devsuperior.movieflix.repositories.ReviewRepository;
import com.devsuperior.movieflix.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private MovieRepository movieRepository;

    @Autowired
    private AuthService authService;

    @Transactional
    public ReviewDTO saveReview(ReviewDTO reviewDTO){
        Review newReview = new Review();
        User user = authService.authenticated();
        newReview.setId(reviewDTO.getId());
        newReview.setText(reviewDTO.getText());
        newReview.setMovie(movieRepository.getOne(reviewDTO.getMovieId()));
        newReview.setUser(user);
        reviewRepository.save(newReview);
        return new ReviewDTO(newReview);
    }
}
