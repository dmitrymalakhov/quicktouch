$(document).ready(function(){
    $('#dialog-overlay, #back_to_main').click(function () {     
        $('#dialog-overlay, #dialog-box').hide();       
        return false;
    });

    function popup() {
         $.cookie('promo_show', 1);
        // get the screen height and width  
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();

        // var dialogTop =  174;  
        // var dialogLeft = 420; 
        var dialogTop =  (maskHeight/2.2) - ($('#dialog-box').height());  
        var dialogLeft = (maskWidth/2) - ($('#dialog-box').width()/2); 
         
        // assign values to the overlay and dialog box
        $('#dialog-overlay').css({height:maskHeight, width:maskWidth}).show();
        $('#dialog-box').css({top:dialogTop, left:dialogLeft}).fadeIn(1000);
    }

    function popdown() {
        $('#dialog-overlay').hide();
        $('#dialog-box').hide();
    }
    if ($.cookie('promo_show') != 1) {
        popup();
    }
});