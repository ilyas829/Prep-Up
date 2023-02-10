$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow,swing");
    });
});


function toggle_feed()
{
	
	$("#panel").slideToggle(1000,"linear");
}
