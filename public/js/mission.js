var Mission = function()
{
}

Mission.prototype = {
	init: function() {
		$('#onelink').on('click', function () { $('#one').addClass('fa-check');});
		$('#twolink').on('click', function () { $('#two').addClass('fa-check');});
		$('#threelink').on('click', function () { $('#three').addClass('fa-check');});
	}
};

$(function() {
	var mission = new Mission();
	mission.init();
});