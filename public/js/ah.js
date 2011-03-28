$(document).ready(init);

var effect = 'blind';
var init = false;
var curId;
var curImg;
var selectedId;
var showingBio = false;
var showingPrj = false;
var moreText = 'more';
var lessText = 'less';

function init()
{
	$('#portfolioImg').click(function()
	{
		hideDetail();
		return false;
	});
	$('a[projectId]').click(function()
	{
		showProject($(this).attr('projectId'));
		return false;
	});
	$('a[class="bioMore"]').click(function()
	{
		showBio();
		return false;
	});
}

function hideDetail()
{
	if(showingBio || showingPrj)
	{
		$('#infoShell')
		.hide(effect,function()
		{
			$('#bioMore').text(moreText);
			showingBio = false;
			showingPrj = false;
		});
	}
}

function showProject(projectId)
{
	curImg = 0;
	selectedId = projectId;
	$('#hidden #projectImage').attr('src',PROJECT_IMG_DIR + projects[projectId].images[0]);
	var data = $('#projectData').html();
	if(!init)
	{
		$('#infoShell')
		.html(data)
		.show(effect);
		addNextPrevListeners();
		setProjectInfo();
		init = true;
	}else
	{
		if(showingBio || showingPrj)
		{
			if(projectId != curId || showingBio)
			{
				$('#infoShell')
				.hide(effect,function()
				{
					$(this)
					.html(data)
					.show(effect);
					addNextPrevListeners();
					setProjectInfo();
					$('#bioMore').text(moreText);
				});
			}
		}else
		{
			$('#infoShell')
			.html(data)
			.show(effect);
			addNextPrevListeners();
			setProjectInfo();
		}
	}
	$('html,body').animate({scrollTop:0});
	showingPrj = true;
	showingBio = false;
	curId = projectId;
}

function nextPrjImg()
{
	curImg = curImg + 1 == projects[curId].images.length ? 0 : curImg + 1;
	$('#infoShell #projectImage').attr('src',PROJECT_IMG_DIR + projects[curId].images[curImg]);
	$('#infoShell #imgCount').text(curImg + 1);
}

function prevPrjImg()
{
	var prevImg = curImg;
	curImg = curImg == 0 ? projects[curId].images.length - 1 : curImg - 1;
	$('#infoShell #projectImage').attr('src',PROJECT_IMG_DIR + projects[curId].images[curImg]);
	$('#infoShell #imgCount').text(curImg + 1);
}

function nextPrj()
{
	curImg = 0;
	selectedId = curId = curId == projects.length - 1 ? 1 : parseInt(curId) + 1;
	$('#hidden #projectImage').attr('src',PROJECT_IMG_DIR + projects[curId].images[0]);
	var data = $('#projectData').html();
	$('#infoShell')
	.html(data);
	addNextPrevListeners();
	setProjectInfo();
	$('html,body').animate({scrollTop:0});
}

function addNextPrevListeners()
{
	var imgCount = projects[selectedId].images.length;
	$('#infoShell #nextImgBtn').click(function()
	{
		imgCount > 1 ? nextPrjImg() : null;
		return false;
	});
	$('#infoShell #prevImgBtn').click(function()
	{
		imgCount > 1 ? prevPrjImg() : null;
		return false;
	});
	$('#infoShell #closePrjBtn').click(function()
	{
		hideDetail();
		return false;
	});
	$('#infoShell #nextPrjBtn').click(function()
	{
		nextPrj();
		return false;
	});
}

function setProjectInfo()
{
	$('#infoShell #imgCount').text(1);
	$('#infoShell #imgTotal').text(projects[selectedId].images.length);
	$('#infoShell #projectTitle').html($('#hidden #projectText span[projectId="' + selectedId + '"] #title').html());
	$('#infoShell #projectCategories').html($('#hidden #projectText span[projectId="' + selectedId + '"] #categories').html());
	$('#infoShell #projectDescription').html($('#hidden #projectText span[projectId="' + selectedId + '"] #description').html());
	projects[selectedId].url ? $('<a href="' + projects[selectedId].url + '" target="_blank">visit live site</a>').insertAfter($('#infoShell #projectDescription')) : null;
}

function showBio()
{
	if(!init)
	{
		$('#infoShell')
		.html($('#bioDataShell')
		.html())
		.show(effect);
		$('#bioMore').text(lessText);
		init = true;
		showingBio = true;
		showingPrj = false;
	}else
	{
		if(!showingBio && !showingPrj)
		{
			$('#infoShell').html($('#bioDataShell').html())
			.show(effect,function()
			{
				$('#bioMore').text(lessText);
				showingBio = true;
				showingPrj = false;
			});
		}else if(!showingBio && showingPrj)
		{
			$('#infoShell')
			.hide(effect,function()
			{
				$(this)
				.html($('#bioDataShell').html())
				.show(effect,function()
				{
					$('#bioMore').text(lessText);
					showingBio = true;
					showingPrj = false;
				});
			});
		}else
		{
			$('#infoShell')
			.hide(effect,function()
			{
				$('#bioMore').text(moreText);
				showingBio = false;
				showingPrj = false;
			});
		}
	}
	$('html,body').animate({scrollTop:0});
}