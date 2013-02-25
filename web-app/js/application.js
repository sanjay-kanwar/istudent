if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}


$.fn.clearSelect = function () {
    return this.each(function () {
        if (this.tagName == 'SELECT')
            this.options.length = 0;
    });
}


$.fn.fillSelect = function (data) {
    return this.clearSelect().each(function () {
        if (this.tagName == 'SELECT') {
            var listBox = this;
            var defaultOption = new Option("Select", "");
            listBox.add(defaultOption);
            $.each(data, function (index, optionData) {
                var option = new Option(optionData.Text, optionData.Value);

                if ($.browser.msie) {
                    listBox.add(option);
                }
                else {
                    listBox.add(option, null);
                }
            });
        }
    });
}