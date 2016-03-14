jQuery(function(){

    var minimized_elements = $('div.minimize');
    var numChars = 500;
    
    minimized_elements.each(function(){    
        var t = $(this).text();        
        if(t.length < numChars) return;
        
        $(this).html(
            t.slice(0,numChars) + '<span>...</span><strong> Click title to see more... </strong>'
        );
        
    }); 

});