<?php
class K
{
	private static $link					= NULL;
	
	private static function getConnection()
	{
		if(self::$link)
		{
			return;
		}
		self::$link = mysql_connect(DB_HOST,DB_USER,DB_PASS);
		!self::$link ? die(mysql_error()) : NULL;
		$db = mysql_select_db(DB_NAME,self::$link);
		!$db ? die(mysql_error()) : NULL;
	}

	private static function runQuery($query)
	{
		$result = mysql_query($query);
		if(!$result)
		{
			die('error ' . mysql_error());
		}
		return $result;
	}
	
	public static function getAboutInfo()
	{
		self::getConnection();
		$query = "SELECT `description`,`bioHeadline`,`bio`,`expertise`,`email`,`resumeURL`,`twitterURL`,`flickrURL`,`linkedInURL` FROM `about` LIMIT 1";
		$result = mysql_query($query);
		!$result ? die(mysql_error()) : NULL;
		return mysql_fetch_assoc($result);
	}
	
	public static function getProjects($column)
	{
		self::getConnection();
		$query = "SELECT `projects`.* FROM `projects` WHERE `column` = {$column} ORDER BY `position`";
		$result = mysql_query($query);
		!$result ? die(mysql_error()) : NULL;
		while($row = mysql_fetch_assoc($result))
		{
			$projects[] = $row;
		}
		return $projects;
	}
	
	public static function updateProject($id,$string)
	{
		self::getConnection();
		$query = "UPDATE `projects` SET `projects`.`projectImages` = '{$string}' ";
		$query .= "WHERE `projects`.`id` = {$id} ";
		$query .= "LIMIT 1";
		$result = self::runQuery($query);
		#return mysql_query($query);
		#return "updated project {$id}: {$rows} rows affected";
	}
}
?>