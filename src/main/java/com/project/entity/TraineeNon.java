package com.project.entity;

	import jakarta.persistence.Column;
	import jakarta.persistence.Entity;
import jakarta.persistence.Id;
	import jakarta.persistence.Table;

	@Entity
	@Table(name = "nongov")
	public class TraineeNon {
			@Id
		    @Column(name = "non_gov_id")
		    private Long nonGovId;

		    @Column(name = "participant_name")
		    private String participantName;

		    @Column(name = "school_complex_id")
		    private Long schoolComplexId;

		    @Column(name = "email")
		    private String email;

		    @Column(name = "mobile")
		    private String mobile;

		    @Column(name = "training_name")
		    private String trainingName;
		    
		    
		    @Column(name = "location")
		    private String location;
		    
		    @Column(name = "no_of_days")
		    private String noOfDays;
		    
		    @Column(name = "modes")
		    private String mode;
		    
		    

			public Long getNonGovId() {
				return nonGovId;
			}

			public void setNonGovId(Long nonGovId) {
				this.nonGovId = nonGovId;
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

			public String getTrainingName() {
				return trainingName;
			}

			public void setTrainingName(String trainingName) {
				this.trainingName = trainingName;
			}

			public String getLocation() {
				return location;
			}

			public void setLocation(String location) {
				this.location = location;
			}

			public String getNoOfDays() {
				return noOfDays;
			}

			public void setNoOfDays(String noOfDays) {
				this.noOfDays = noOfDays;
			}

			public String getMode() {
				return mode;
			}

			public void setMode(String mode) {
				this.mode = mode;
			}
		    
		    
		    



		
		   
		    
		}






