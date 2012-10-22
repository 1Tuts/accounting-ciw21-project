
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8" />
	<title></title>
	<style type="text/css">
		
		.ok {
			color:#23B3AB;
		}

		.err {
			color:#BD5B3D;
		}
	</style>
</head>
<body><?php
		error_reporting(E_ALL ^ E_NOTICE);

		$admin = 'mahnaz.najafiyan@gmail.com';

		$name    = $_POST['name'];
		$email   = $_POST['mail'];

		if( strlen($name)>=3 && strlen($email)>=7 ){
			if( @mail (
					$admin,
					"mydomain.com contact",
					$text,
					"From:$name <$email" )
			){
				echo '<h2 class="ok">Mail sent</h2>';
			}else{
				echo '<h2 class="err">Error in sending mail.</h2>';
			}
		}else{
			echo '<h2 class="err">Access Restricted !</h2>';
		}
	?>
	</body>
</html>