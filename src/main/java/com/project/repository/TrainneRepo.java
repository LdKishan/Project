package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.Trainee;

@Repository
public interface TrainneRepo extends JpaRepository<Trainee, Long> {

}
