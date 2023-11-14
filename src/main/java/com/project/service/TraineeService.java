package com.project.service;


import com.project.entity.Trainee;
import com.project.entity.TraineeNon;

public interface TraineeService {
	
	public Trainee saveTreasury(Trainee treasury);
	public TraineeNon saveTreasury(TraineeNon traineeNon);
	
	
	//public List<Trainee> getAllTreasuries();
	//public Trainee getTreasuryById(Long treasuryId);
	
	//public void deleteTreasury(Long treasuryId);
	

}
