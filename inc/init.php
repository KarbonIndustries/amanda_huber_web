<?php
error_reporting(0);
require_once('config.php');
require_once('db.php');

#AUTOLOAD FUNCTION
function __autoload($class_name)
{
	$file1 = CLASS_DIR . $class_name . '.php';
	$file2 = FLOURISH_DIR . $class_name . '.php';

	if(file_exists($file1))
	{
		include $file1;
		return;
	}
	if(file_exists($file2))
	{
		include $file2;
		return;
	}

	throw new Exception('The class ' . $class_name . ' could not be loaded');
}

?>