
var selects = $(".selectBox");

selects.on("click",function(){
		var t = this.parentNode.children[1];
		if ($(t).css("display") == "block") {
			$(t).css("display","none");

		}else{	
			$(".checkboxes").css("display","none");
			$(t).css("display","block");
		}
			
})

$(document).on("click",function(e){
    if(!e.target.closest(".multiselect")){
        $(".checkboxes").css("display","none");
    }
})


var CheckArr = [
    "Bütün şəhərlər",
    "Yanacaq növü",
    "Bütün modellər",
    "Yanacaq növü",
    "Ötürücü tiplər",
    "Bütün rənglər",
    "Bank növü"
]


$("#search .multiselect label").on("click",function(e){
    var str = "";
    var val = "";
    if($(e.target)[0].tagName !="INPUT"){
        $(this).find("input").prop("checked",!$(this).find("input").prop("checked"));
    }
    for(var i =0 ; i<$("#search .multiselect label").length;i++){
        if($($(this).parent().find("input")[i]).prop("checked")){
            if(str == ""){
                    str+=$($(this).parent().find("input")[i]).next().text()+" ";  
                }else {
                    str+=", "+$($(this).parent().find("input")[i]).next().text()+" ";
                } 
        }

        // valueri bir araya toplamag
         if($($(this).parent().find("input")[i]).prop("checked")){
            if(val == ""){
                    val+=$($(this).parent().find("input")[i]).attr("value");  
                }else {
                    val+=";"+$($(this).parent().find("input")[i]).attr("value");
                } 
        }

        if(str != ""){
            $(this).parent().prev().find("option").text(str);
        }else{
            $(this).parent().prev().find("option").text(CheckArr[$(".multiselect").index($(this).parent().parent())]);
        }
        
       $(this).parent().prev().find("option").attr("value",val);
    }
})


$(".bankNovu label span").on("click",function(){
    $(this).prev().prop("checked",!$(this).prev().prop("checked"));
})

$(".tehcizat label span").on("click",function(){
    $(this).prev().prop("checked",!$(this).prev().prop("checked"));
})

$(".tehcizat label").on("click",function(){
   
    var str="";
    for(var i =0 ; i<$(".tehcizat label input").length;i++){
        if($($(".tehcizat label input")[i]).prop("checked")){
            if(str == ""){
                    str+=$($(".tehcizat label input")[i]).val();  
                }else {
                    str+=";"+$($(".tehcizat label input")[i]).val();
                } 
        }
    }
    $(".addForm input").val(str);
    
   
})
