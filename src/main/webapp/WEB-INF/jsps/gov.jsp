
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Form Example</title>
  <style>
    label {
      display: block;
      margin-bottom: 8px;
    }
 
    input, select {
      margin-bottom: 16px;
    }
 
    #treasuryLabel {
      color: #333;
    }
 
    #nonGovtRadio:checked ~ #treasuryLabel {
      color: red;
    }
 
    #trainingNameLabel {
      display: none;
    }
  </style>
</head>
<body>
 
  <form id="myForm" onsubmit="submitForm(event)">
  
  	<label>
      Is it a government treasury ID?
      <input type="radio" id="govtRadio" name="treasuryType" value="govt" checked onchange="changeTreasuryLabel()">
      Yes
      <input type="radio" id="nonGovtRadio" name="treasuryType" value="non-govt" onchange="changeTreasuryLabel()">
      No
    </label>
    <label for="treasuryId">
      <span id="treasuryLabel">Treasury ID</span>
      <input type="text" id="treasuryId" name="treasuryId" required>
    </label>
 
    <label for="participantName">
      Participant Name
      <input type="text" id="participantName" name="participantName" required>
    </label>
 
    <label for="schoolId">
      School ID
      <input type="text" id="schoolComplexId" name="schoolComplexId" required>
    </label>
 
    <label for="email">
      Email
      <input type="email" id="email" name="email" required>
    </label>
 
    <label for="mobile">
      Mobile
      <input type="tel" id="mobile" name="mobile" required>
    </label>
 
    <label>
      Have you attended the training?
      <input type="radio" id="trainingYes" name="trainingAttended" value="yes" onchange="toggleTrainingNameField()">
      Yes
      <input type="radio" id="trainingNo" name="trainingAttended" value="no" onchange="toggleTrainingNameField()">
      No
    </label>
 
    <label id="trainingNameLabel">
      Training Name
      <input type="text" id="trainingName" name="trainingName">
    </label>
    <label id="trainingNameLabel">
      Location
      <input type="text" id="location" name="location">
    </label>
    <label id="trainingNameLabel">
      No Of Days
      <input type="text" id="noOfDays" name="noOfDays">
    </label>
    <label id="trainingNameLabel">
      Mode
      <select id="mode" name="mode">
    <option value="online">Online</option>
    <option value="offline">Offline</option>
    <option value="hybrid">Hybrid</option>
</select>
    </label>
 
    <button type="submit">Submit</button>
  </form>
 
  <script>
    function changeTreasuryLabel() {
      const treasuryLabel = document.getElementById('treasuryLabel');
      const nonGovtRadio = document.getElementById('nonGovtRadio');
 
      if (nonGovtRadio.checked) {
        treasuryLabel.textContent = 'Non Govt. ID';
      } else {
        treasuryLabel.textContent = 'Treasury ID';
      }
    }
 
    function toggleTrainingNameField() {
      const trainingNameLabel = document.getElementById('trainingNameLabel');
      const location = document.getElementById('trainingNameLabel');
      const noOfDays = document.getElementById('trainingNameLabel');
      const mode = document.getElementById('trainingNameLabel');
      const trainingYes = document.getElementById('trainingYes');
 
      if (trainingYes.checked) {
trainingNameLabel.style.display = 'block';
      } else {
trainingNameLabel.style.display = 'none';
      }
    }
 
    function submitForm(event) {
      event.preventDefault(); // Prevent the default form submission
 
      // Fetch API to send form data to the specified endpoint
		fetch('/trainee/save', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          treasuryId: document.getElementById('treasuryId').value,
          participantName: document.getElementById('participantName').value,
          schoolComplexId: document.getElementById('schoolComplexId').value,
          email: document.getElementById('email').value,
          mobile: document.getElementById('mobile').value,
          treasuryType: document.querySelector('input[name="treasuryType"]:checked').value,
          trainingAttended: document.querySelector('input[name="trainingAttended"]:checked').value,
          trainingName: document.getElementById('trainingName').value,
          location: document.getElementById('location').value,
          noOfDays: document.getElementById('noOfDays').value,
          mode: document.getElementById('mode').value,
          
        }),
      })
      .then(response => response.json())
      .then(data => {
        console.log('Form data sent successfully:', data);
        // You can handle the response here
      })
      .catch(error => {
        console.error('Error sending form data:', error);
      });
    }
  </script>
 
</body>
</html>

