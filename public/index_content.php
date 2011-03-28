<?php
$about = K::getAboutInfo();
$col1 = K::getProjects(1);
$col2 = K::getProjects(2);
$col3 = K::getProjects(3);
$col4 = K::getProjects(4);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>AMANDA HUBER</title>
	<link rel="stylesheet"type="text/css"  href="<?= CSS_DIR ?>styles.css" />
</head>
<body>
	<div id="outerShell">
		<div id="innerShell">
			<div id="header">
				<div id="socialBar">
					<ul>
						<?php
						$socialCount = 0;
						if($about['twitterURL'])
						{
							echo '<li><a href="' . $about['twitterURL'] . '" target="_blank">twitter</a></li>' . "\n";
							$socialCount++;
						}
						if($about['flickrURL'])
						{
							echo ($socialCount > 0 ? '<li class="linkSeparator">/</li>' . "\n" : '');
							echo '<li><a href="' . $about['flickrURL'] . '" target="_blank">flickr</a></li>' . "\n";
							$socialCount++;
						}
						if($about['linkedInURL'])
						{
							echo ($socialCount > 0 ? '<li class="linkSeparator">/</li>' . "\n" : '');
							echo '<li><a href="' . $about['linkedInURL'] . '" target="_blank">linkedin</a></li>' . "\n";
							#$socialCount++;
						}
						?>
					</ul>
				</div>
				<div id="aboutBar">
					<div id="logoShell"><a id="portfolioImg"><img src="<?= IMG_DIR ?>portfolio_logo.png"/></a></div>
					<div id="bioDescription">
						<p><?php echo $about['description']; ?> <a id="bioMore" class="bioMore"></a></p>
					</div>
					<div id="emailResumeShell">
						<?php
							echo $about['email'] ? '<span><a href="mailto:' . $about['email'] . '">' . $about['email'] . '</a></span>' . "\n" : '';
							echo $about['resumeURL'] ? '<span><a href="/files/' . $about['resumeURL'] . '" target="_blank">download resume PDF</a></span>' . "\n" : '';
						?>
					</div>
				</div>
			</div>

			<div id="infoShell">
			</div>

			<div id="projectShell">
				<?php
				$jsStr = '<script type="text/javascript">' . "\n";
				$jsStr .= 'var projects = new Array();' . "\n";
				?>
				<?php for($i = 1;$i <= 4;$i++): ?>
					<div id="col<?=$i?>">
					<?php foreach(${'col' . $i} as $p): ?>
						<a projectId="<?= $p['id'] ?>" title="<?= utf8_encode($p['title']) ?>"><img src="<?= PROJECT_THUMB_DIR . $p['thumbnail'] ?>"/></a>
						<?
						$allProjects[] = $p;
						$jsStr .= "projects[{$p['id']}] = {'url':'{$p['url']}','images':" . json_encode(unserialize($p['projectImages'])) . "};" . "\n";
						?>
					<? endforeach; ?>
					</div>
				<? endfor; ?>
				<?php $jsStr .= '</script>' . "\n" ?>
			</div>
			<div id="footerShell">
				<span class="copyright">&copy; <?= date("Y") . ' ' . CLIENT_NAME ?></span>
				<span class="siteCredit"><a href="<?= ARCHITECT_URL ?>" target="_blank">site programming: <?= ARCHITECT_LONG_NAME ?></a></span>
			</div>
		</div>
	</div>
	<div id="hidden">
		<div id="projectText">
				<?php
				foreach($allProjects as $p): ?>
					<span projectid="<?= $p['id'] ?>">
						<span id="title"><?= strtoupper($p['title']) ?></span>
						<span id="categories"><?= strtolower($p['categories']) ?></span>
						<span id="description"><?= utf8_encode(nl2br($p['description'])) ?></span>
					</span>
				<? endforeach; ?>
		</div>
		<div id="projectData">
			<div id="projectDetailOuterShell">
				<div id="projectDetailInnerShell">
					<div id="nextPrevControlShell"><a id="prevImgBtn"></a><span id="imgCount"></span><span id="imgOf">OF</span><span id="imgTotal"></span><a id="nextImgBtn"></a><a id="closePrjBtn"></a></div>
					<div id="projectImgShell">
						<img id="projectImage" />
					</div>
				</div>
				<div id="projectInfoOuterShell">
					<div id="nextPrjShell"><a id="nextPrjBtn">NEXT PROJECT</a></div>
					<div id="projectInfoInnerShell">
						<h1 id="projectTitle"></h1>
						<h4 id="projectCategories"></h4>
						<p id="projectDescription"></p>
					</div>
				</div>
			</div>
		</div>
		<div id="bioDataShell">
			<div id="bio">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td id="bio1">
						<h1><?= $about['bioHeadline'] ?></h1>
						<p><?= nl2br($about['bio']) ?></p>
						</td>
						<td id="bio2">
							<img src="<?= IMG_DIR ?>bio_photo.jpg" alt="" />
						</td>
						<td id="bio3">
							<h2>AREAS OF EXPERTISE</h2>
							<p><?= $about['expertise'] ?></p>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script src="<?= JS_DIR ?>jquery-1.4.4.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?= JS_DIR ?>jquery-ui-1.8.10.custom.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<?= JS_DIR ?>ah.js" type="text/javascript" charset="utf-8"></script>
	<?php
	echo $jsStr;
	?>
	<script type="text/javascript">
	$('#bioMore').text(moreText);
	var PROJECT_IMG_DIR = '<?= PROJECT_IMG_DIR ?>';
	</script>
</body>
</html>