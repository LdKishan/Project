package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.TraineeNon;

@Repository
public interface NonGovRepo extends JpaRepository<TraineeNon, Long> {

}
