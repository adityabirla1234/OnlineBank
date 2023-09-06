<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!--  <h1 style="color:red;text-align:center">Saving Account</h1>
<frm:form modelAttribute="dpst">
<table border="0" align="center" bgcolor="cyan">
<tr>
<td>Account No:</td>
<td><frm:input path="accNo"/></td>
</tr>
<tr>
<td><input type="submit" value="CheckBalance"></td>
</tr>
</table>
</frm:form>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Account Number Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Enter Your Account Number</h1>
        <frm:form modelAttribute="dpst">
            <div class="form-group">
                <label for="accNo">Account Number:</label>
                <input type="number" class="form-control" id="accountNumber" name="accNo" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
       </frm:form>
    </div>
    
</body>
</html>
