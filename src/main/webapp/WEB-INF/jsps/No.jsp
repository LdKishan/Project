<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Radio Button Example</title>
</head>
<body>
  <h1>Radio Button Example</h1>

<form action="/trainee/save" method="post">

	Government (or) Treasury Employee:
	<input type="radio" name="answer" id="yes" value="yes" checked> Yes
  <input type="radio" name="answer" id="no" value="no"> No

  <div id="treasury-id-field" style="display: none;">
    <label for="treasuryId">Treasury ID:</label>
    <input type="text" id="treasuryId" name="treasuryId">
  </div>

  <div id="participant-name-field" style="display: block;">
    <label for="participantName">Participant Name:</label>
    <input type="text" id="participantName" name="participantName">
  </div>

  <div id="school-complex-id-field" style="display: block;">
    <label for="schoolComplexId">School Complex ID:</label>
    <input type="text" id="schoolComplexId" name="schoolComplexId">
  </div>

  <div id="email-field" style="display: block;">
    <label for="email">Email:</label>
    <input type="text" id="email" name="email">
  </div>

  <div id="mobile-field" style="display: block;">
    <label for="mobile">Mobile:</label>
    <input type="text" id="mobile" name="mobile">
  </div>

  <div id="training-name-field" style="display: block;">
    <label for="trainingName">Training Name:</label>
    <input type="text" id="trainingName" name="trainingName">
  </div>

  <script>
    // Get the radio buttons
    const yesRadioButton = document.getElementById('yes');
    const noRadioButton = document.getElementById('no');

    // Get the fields
    const treasuryIdField = document.getElementById('treasury-id-field');
    const participantNameField = document.getElementById('participant-name-field');
    const schoolComplexIdField = document.getElementById('school-complex-id-field');
    const emailField = document.getElementById('email-field');
    const mobileField = document.getElementById('mobile-field');
    const trainingNameField = document.getElementById('training-name-field');

    // Add an event listener to the radio buttons
    yesRadioButton.addEventListener('change', function() {
      // Show the treasury ID field
      treasuryIdField.style.display = 'block';

      // Hide the other fields
      participantNameField.style.display = 'none';
      schoolComplexIdField.style.display = 'none';
      emailField.style.display = 'none';
      mobileField.style.display = 'none';
      trainingNameField.style.display = 'none';
    });

    noRadioButton.addEventListener('change', function() {
      // Show the other fields
      participantNameField.style.display = 'block';
      schoolComplexIdField.style.display = 'block';
      emailField.style.display = 'block';
      mobileField.style.display = 'block';
      trainingNameField.style.display = 'block';

      // Hide the treasury ID field
      treasuryIdField.style.display = 'none';
    });
  </script>



</form>
  
</body>
</html>
