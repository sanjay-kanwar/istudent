$(document).ready(function () {

    // initial request to controller to get application list
    loadApplicationList();

    // Auto refresh
    var applicationRefresh = window.setInterval(function () {
        loadApplicationList();
    }, 10000);
});

function loadApplicationList() {
    var applicationListContainer = $("#application-list");
    var ajaxContainer = $("#ajax-content");
    var listObject = $(".list-url");
    var listUrl = "";
    if (listObject.length > 0) {
        listUrl = listObject.attr("href");
    }

    $.ajax({
        beforeSend:function () {
            ajaxContainer.fadeIn();
        },
        url:listUrl,
        success:function (data) {
            applicationListContainer.html(data);
            ajaxContainer.fadeOut();
        },
        error:function(data){
            applicationListContainer.html("<div class='alert alert-error'>Apologies, something went wrong. We are looking into it.</div>");
            ajaxContainer.fadeOut();
        },
        cache:false
    });

}