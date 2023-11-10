<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Treasury Management</title>
</head>
<body>

<h1>Trainee Management</h1>



<form action="/trainee/save" method="post">
	Government (or) Treasury Employee:<p>
<input type="radio" name="yes_no" checked>Yes
</p>
<p>
<input type="radio" name="yes_no">No
</p> 
    Participant Name: <input type="text" name="participantName">
    School Complex ID: <input type="text" name="schoolComplexId">
    Email: <input type="text" name="email">
    Mobile: <input type="text" name="mobile">
    Have you attend training before:<p>
<input type="radio" name="yes_no" checked>Yes
</p>
<p>
<input type="radio" name="yes_no">No
</p> 
    Training Name: <input type="text" name="trainingName">
    <input type="submit" value="Save">
</form>

</body>
</html>
