package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.entity.Trainee;
import com.project.service.TraineeService;
import com.project.service.TraineeServiceImpl;

@RestController
@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST})
public class TraineeController {
	@Autowired
	private TraineeService traineeService;
	
	 public TraineeController(TraineeServiceImpl traineeServiceImpl) {
	        this.traineeService = traineeServiceImpl;
	    }
	 
	 @PostMapping("/trainee/save")
	 public ResponseEntity<Trainee> saveTrainee(@RequestBody Trainee trainee) {
		 Trainee saveTreasury = traineeService.saveTreasury(trainee);
	        return ResponseEntity.ok(saveTreasury);
	 
	 }
	 
	 @PostMapping("/trainee/save/no")
	 public ResponseEntity<Trainee> saveTreasuryWithoutId(@RequestBody Trainee trainee) {
		 Trainee saveTreasury = traineeService.saveTreasury(trainee);
	        return ResponseEntity.ok(saveTreasury);
	 
	 }
	 
	 
	 
	 
//	 //@GetMapping
//	   // public List<Trainee> getAllTreasuries() {
//	       // return traineeServiceImpl.getAllTreasuries();
//	    //}
//	 
//	 @GetMapping("/{treasuryId}")
//	    public Trainee getTreasuryById(@PathVariable Long treasuryId) {
//	        return traineeServiceImpl.getTreasuryById(treasuryId);
//	    }
//	 
//	        @DeleteMapping("/{treasuryId}")
//	    public void deleteTrainee(@PathVariable Long treasuryId) {
//		 traineeServiceImpl.deleteTreasury(treasuryId);
//	    }
}
