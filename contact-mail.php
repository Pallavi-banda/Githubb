
<?php 

	error_reporting(0);
	$name=$_REQUEST['name'];
	$email=$_REQUEST['email'];
	$mob=$_REQUEST['mob'];
	$msg=$_REQUEST['msg'];
	$company=$_REQUEST['company'];
	$address=$_REQUEST['address'];
	$ip = $_SERVER['REMOTE_ADDR'];
	  
  		    $fullMessage = '<html><body>';
			$fullMessage = $fullMessage."<br/><br/>";
			$fullMessage = $fullMessage."sent a Message using Inquiry Form of Company Name";
			$fullMessage = $fullMessage."<br/><br/>";
			$fullMessage = $fullMessage."<table align=left border=1>";
			$fullMessage = $fullMessage."<tr><td>Name</td> <td>".$name."</td></tr>";
			$fullMessage = $fullMessage."<tr><td>Email</td> <td>".$email."</td></tr>";
			$fullMessage = $fullMessage."<tr><td>Phone</td> <td>".$phone."</td></tr>";
			$fullMessage = $fullMessage."<tr><td>Subject</td> <td>".$subject."</td></tr>";
			$fullMessage = $fullMessage."<tr><td>Message</td> <td>".$message."</td></tr>";
			$fullMessage = $fullMessage.'</table></body></html>';
 			
			
		$to='petadopt@gmail.com';
		$from=$email;
		$subject="New Inquiry" ;
		$header  = "From: $from <$from>\n" .
				    "MIME-Version: 1.0\n" .
				    "Content-type: text/html; charset=iso-8859-1";
       
		mail($to, $subject, $fullMessage, $header);
		
				
 ?>
<script language="javascript">alert('Thank Your For Your Inquiry. We Will Contact You Soon.');</script>
<script type="application/javascript">window.location.href="http://127.0.0.1/FluffyFriendsFinal/public/contact";</script>
