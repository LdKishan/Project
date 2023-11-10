package com.project.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "treasury")
public class Trainee {
	
	
	
//		@Column(name = "government_or_treasury_employee")
//		private String governmentOrTreasuryEmployee;
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "treasury_id")
	    private Long treasuryId;

	    @Column(name = "participant_name")
	    private String participantName;

	    @Column(name = "school_complex_id")
	    private Long schoolComplexId;

	    @Column(name = "email")
	    private String email;

	    @Column(name = "mobile")
	    private String mobile;
	    
//	    @Column(name = "attend_trainning")
//	    private String attendTrainning;

	    @Column(name = "training_name")
	    private String trainingName;
	    
	    
	    
//
//	    public String getGovernmentOrTreasuryEmployee() {
//			return governmentOrTreasuryEmployee;
//		}
//
//		public void setGovernmentOrTreasuryEmployee(String governmentOrTreasuryEmployee) {
//			this.governmentOrTreasuryEmployee = governmentOrTreasuryEmployee;
//		}
	


		public Long getTreasuryId() {
			return treasuryId;
		}

		public void setTreasuryId(Long treasuryId) {
			this.treasuryId = treasuryId;
		}

		public String getParticipantName() {
			return participantName;
		}

		public void setParticipantName(String participantName) {
			this.participantName = participantName;
		}

		public Long getSchoolComplexId() {
			return schoolComplexId;
		}

		public void setSchoolComplexId(Long schoolComplexId) {
			this.schoolComplexId = schoolComplexId;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		
		

//		public String getAttendTrainning() {
//			return attendTrainning;
//		}
//
//		public void setAttendTrainning(String attendTrainning) {
//			this.attendTrainning = attendTrainning;
//		}

		public String getTrainingName() {
			return trainingName;
		}

		public void setTrainingName(String trainingName) {
			this.trainingName = trainingName;
		}

	   
	    
	}



