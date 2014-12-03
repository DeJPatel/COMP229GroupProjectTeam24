$(document).ready(function () {
    $('.menu ul').each(function () {
        $(this).parent().eq(0).hover(function () {
            $(this).addClass('menuLink'); //for styling
            $('li:eq(0)', this).slideDown(200);
            $('li:eq(1)', this).slideDown(200);
            $('li:eq(2)', this).slideDown(200);
            $('li:eq(3)', this).slideDown(200);
            $('li:eq(4)', this).slideDown(200);
            $('li:eq(5)', this).slideDown(200);
            $('li:eq(6)', this).slideDown(200);
        }, function () {
            $(this).removeClass('menuLink'); //for styling
            $('li:eq(0)', this).stop(true, true).slideUp(400);
            $('li:eq(1)', this).stop(true, true).slideUp(400);
            $('li:eq(2)', this).stop(true, true).slideUp(400);
            $('li:eq(3)', this).stop(true, true).slideUp(400);
            $('li:eq(4)', this).stop(true, true).slideUp(400);
            $('li:eq(5)', this).stop(true, true).slideUp(400);
            $('li:eq(6)', this).stop(true, true).slideUp(400);
        });
    });
});