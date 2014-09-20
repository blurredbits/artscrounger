var Friend = function()
{
}

Friend.prototype = {
	init: function() {
		$('#invite').on('click', function(e) { $('#zero').removeClass('hide'); $('#btns').addClass('hide'); e.preventDefault();});
		$('#send').on('click', function(e) { $('#one').hasClass('hide') ? $('#one, #btns').removeClass('hide') : $('#oneprime, #btns').removeClass('hide'); $('#zero').addClass('hide'); $('#email').val(''); if (!$('#oneprime').hasClass('hide'))
		{
			window.setTimeout(function() { $('#two').addClass('on'); }, 500);
			window.setTimeout(function() { $('#three').addClass('on');}, 850);
		} e.preventDefault();});
		//$('#')
	}
};

$(function() {
	var friend = new Friend();
	friend.init();
});