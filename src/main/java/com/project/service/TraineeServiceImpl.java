package com.project.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.Trainee;
import com.project.entity.TraineeNon;
import com.project.repository.NonGovRepo;
import com.project.repository.TrainneRepo;


@Service
public class TraineeServiceImpl implements TraineeService {
	
	@Autowired
	private  TrainneRepo traineeRepo;
	
	@Autowired
	private NonGovRepo nonGovRepo;
	
//	public TraineeServiceImpl(TrainneRepo traineeRepo) {
//        this.traineeRepo = traineeRepo;
//    }
//	
//	public TraineeServiceImpl(NonGovRepo nonGovRepo) {
//        this.nonGovRepo = nonGovRepo;
//    }
	

	//for Government Employee 
	@Override
	public Trainee saveTreasury(Trainee treasury) {
		return traineeRepo.save(treasury);
    }
	
	
	//for Non-Government Employee 
	@Override
	public TraineeNon saveTreasury(TraineeNon traineeNon) {
		// TODO Auto-generated method stub
		return nonGovRepo.save(traineeNon);
	}


	
	

}
