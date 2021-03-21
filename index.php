<?php
 #session_start();
 require_once 'header.php';
 echo "<div class='center'>Welcome to Stay Connect,";
 if ($loggedin) echo " $user, you are logged in";
 else echo ' please sign up or log in';
 echo <<<_END
</div>
 <div data-role="footer">
<h4></
h4>
 </div>
 </body>
</html>
_END;
?>