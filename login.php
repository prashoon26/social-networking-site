<?php

 require_once 'header.php';
 $error = $user = $pass = "";
 if (isset($_POST['user']) && isset($_POST['pass']))
 {
 $user = sanitizeString($_POST['user']);
 $pass = sanitizeString($_POST['pass']);
 if ($user == "" || $pass == "")
$error = 'Not all fields were entered';
 else
 {
$sql= "SELECT * FROM userss WHERE user_name='$user' AND pass='$pass'";
$result = queryMySQL($sql); 
if ($result->num_rows == 0)
{
$error = "Invalid login attempt";
}
else
{
$_SESSION['user'] = $user;
$_SESSION['pass'] = $pass;
die("You are now logged in. Please <a data-transition='slide'
href='members.php?view=$user'>click here</a> to continue.</div>
</body></html>");
}
 }
}
echo <<<_END
<form method='post' action='login.php'>
<div data-role='fieldcontain'>
<label></label>
<span class='error'>$error</span>
</div>
<div data-role='fieldcontain' class='center'>
<label></label>
Please enter your details to log in
</div>
<div data-role='fieldcontain' class='center'>
<label>Username</label>
<input type='text' maxlength='16' name='user' value='$user'>
</div>
<div data-role='fieldcontain' class='center'>
<label>Password</label>
<input type='password' maxlength='16' name='pass' value='$pass'>
</div>
<div data-role='fieldcontain' class='center'>
<label></label>
<input data-transition='slide' type='submit' value='Login'>
</div>
</form>
 </div>
 </body>
</html>
_END;
?> 