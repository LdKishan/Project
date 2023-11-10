package com.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.Trainee;
import com.project.repository.TrainneRepo;


@Service
public class TraineeServiceImpl implements TraineeService {
	
	@Autowired
	private  TrainneRepo traineeRepo;
	
	public TraineeServiceImpl(TrainneRepo traineeRepo) {
        this.traineeRepo = traineeRepo;
    }


	@Override
	public Trainee saveTreasury(Trainee treasury) {
		// TODO Auto-generated method stub
		return traineeRepo.save(treasury);
    };
    
    
    
	
	

}
