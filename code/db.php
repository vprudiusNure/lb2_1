<?php
	function isConnectionSet($dbh) {
		if (isset($dbh)) {
			print("<p>Database connection established</p><hr>\n");
		}
	}

	$host = 'localhost';
	$dbname = 'itech';
	$user = 'root';
	$pass = '';

	try {
		$dbh = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
	}
	catch (PDOException $e) {
		print "<b>Error!</b><br>" . $e->getMessage() . "<hr>";
		die();
	}
