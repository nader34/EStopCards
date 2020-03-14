$("#modal_trigger").leanModal({
    top: 100,
    overlay: 0.6,
    closeButton: ".modal_close"
});

$(function () {
    // Calling Login Form
    $("#login_form").click(function () {
        $(".main_menu").hide();
        $(".user_login").show();
        return false;
    });

    // Calling Register Form
    $("#register_form").click(function () {
        $(".main_menu").hide();
        $(".user_register").show();
        $(".header_title").text('Register');
        return false;
    });

    // Going back to Main Form
    $(".back_btn").click(function () {
        $(".user_login").hide();
        $(".user_register").hide();
        $(".main_menu").show();
        $(".header_title").text('Login');
        return false;
    });
});