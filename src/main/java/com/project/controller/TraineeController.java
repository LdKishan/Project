package com.project.controller;


import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.entity.Trainee;
import com.project.entity.TraineeNon;
import com.project.service.TraineeService;

@RestController
@RequestMapping(value= "/api" , method = {RequestMethod.GET, RequestMethod.POST})
public class TraineeController {
	@Autowired
	private TraineeService traineeService;
	
//	 public TraineeController(TraineeServiceImpl traineeServiceImpl) {
//	        this.traineeService = traineeServiceImpl;
//	    }
	
	
	//for Government Employee 
	 @PostMapping("/trainee/save")
	 public ResponseEntity<Trainee> saveTrainee(@RequestBody Trainee trainee) {
		 Trainee saveTreasury = traineeService.saveTreasury(trainee);
		 
	        return ResponseEntity.ok(saveTreasury);
	 
	 }
	 
	 
	 //for NonGovernment Employee
	 @PostMapping("/trainee/nonGov")
	 public ResponseEntity<TraineeNon> saveTreasuryWithoutId(@RequestBody TraineeNon traineeNon) {
		 TraineeNon saveTreasury = traineeService.saveTreasury(traineeNon);
	        return ResponseEntity.ok(saveTreasury);
	 
	 }
	 
	 
	 
	 
}
