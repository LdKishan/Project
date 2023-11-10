package com.project.entity;

import jakarta.persistence.Column;

public class No {
	
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
    
    

}
