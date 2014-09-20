var User = function()
{
}

User.prototype = {
	init: function() {
		$('#create-user').on('click', $.proxy(this._createClick, this));
	},

	_createClick: function(e) {
		$.post('/users',
			{ username: $('#username').val(), email: $('#email').val() },
			$.proxy(this._success, this),
			'application/json'
		);

		e.preventDefault();
		return false;
	},

	_success: function(data, textStatus, xhr)
	{
		console.log(data);
		console.log(textStatus);
		console.log(xhr);
	}
};

$(function() {
	var user = new User();
	user.init();
});