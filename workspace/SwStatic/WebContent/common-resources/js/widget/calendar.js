if (!main) var main = {};

main.widget = function() {
	var t = this;
    t.element = $('.l-widgets');
}

$(document).ready(function() {
    var calendar = new main.widget();
});