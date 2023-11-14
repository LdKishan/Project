<!--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Government Employee Form</title>
    <script type="text/javascript">
        function showFields() {
            var isGovernmentEmployee = document.getElementById('govtEmployeeYes').checked;

            if (isGovernmentEmployee) {
                document.getElementById('govtFields').style.display = 'block';
                document.getElementById('nonGovtFields').style.display = 'none';
            } else {
                document.getElementById('govtFields').style.display = 'none';
                document.getElementById('nonGovtFields').style.display = 'block';
            }
        }

        function showAdditionalFields(isGovernment) {
            var showAdditional = document.getElementById(isGovernment ? 'showAdditionalGovtFieldsYes' : 'showAdditionalNonGovtFieldsYes').checked;

            var additionalFieldsDiv = document.getElementById(isGovernment ? 'additionalGovtFields' : 'additionalNonGovtFields');
            if (showAdditional) {
                additionalFieldsDiv.style.display = 'block';
            } else {
                additionalFieldsDiv.style.display = 'none';
            }
        }
        
        function submitForm() {
            var isGovernmentEmployee = document.getElementById('govtEmployeeYes').checked;
            var apiUrl = isGovernmentEmployee ? '/trainee/save' : '/trainee/nonGov';

            // Gather form data
            var formData = new FormData(document.forms[0]);

            // Make an AJAX request using fetch
            fetch(apiUrl, {
                method: 'POST',
                body: formData,
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                    // Add any other headers if needed
                },
            })
            .then(response => response.json())
            .then(data => {
                // Handle the response data
                console.log(data);
            })
            .catch(error => {
                // Handle errors
                console.error('Error:', error);
            });
        }

        // Call the function when the page loads
        window.onload = showFields;
    </script>
</head>
<body>
    <h1>Government Employee Information</h1>

    <form>
        <label>
            Are you a government employee?
            <input type="radio" name="govtEmployee" id="govtEmployeeYes" value="yes" onclick="showFields()" checked> Yes
            <input type="radio" name="govtEmployee" id="govtEmployeeNo" value="no" onclick="showFields()"> No
        </label>

        <div id="govtFields">
            <label>Treasury ID: <input type="text" name="fieldA"></label><br>
            <label>PARTICIPANT NAME: <input type="text" name="fieldB"></label><br>
            <label>SCHOOL COMPLEX ID: <input type="text" name="fieldC"></label><br>
            <label>EMAIL: <input type="text" name="fieldD"></label><br>
            <label>MOBILE: <input type="text" name="fieldK"></label><br>
            
            <label>Have you attended any training?
                <input type="radio" name="showAdditionalGovtFields" id="showAdditionalGovtFieldsYes" value="yes" onclick="showAdditionalFields(true)" checked> Yes
                <input type="radio" name="showAdditionalGovtFields" id="showAdditionalGovtFieldsNo" value="no" onclick="showAdditionalFields(true)"> No
            </label>

            <div id="additionalGovtFields" style="display: block;">
                <label>Training Name: <input type="text" name="additionalFieldA"></label><br>
            </div>
        </div>

        <div id="nonGovtFields" style="display: none;">
            <label>Non Gov ID: <input type="text" name="fieldE"></label><br>
            <label>PARTICIPANT NAME:  <input type="text" name="fieldF"></label><br>
            <label>SCHOOL COMPLEX ID: <input type="text" name="fieldG"></label><br>
            <label>EMAIL:<input type="text" name="fieldH"></label><br>
            <label>MOBILE:<input type="text" name="fieldH"></label><br>
            
            <label>Have you attended any training?
                <input type="radio" name="showAdditionalNonGovtFields" id="showAdditionalNonGovtFieldsYes" value="yes" onclick="showAdditionalFields(false)" checked> Yes
                <input type="radio" name="showAdditionalNonGovtFields" id="showAdditionalNonGovtFieldsNo" value="no" onclick="showAdditionalFields(false)"> No
            </label>

            <div id="additionalNonGovtFields" style="display: block;">
                <label>Training Name: <input type="text" name="additionalFieldX"></label><br>
            </div>
        </div>

        <input type="button" value="Cancel" onclick="window.location.href='your_cancel_url.html'">
        <input type="submit" value="Submit">
    </form>
</body>
</html> -->

