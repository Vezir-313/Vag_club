
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





////////////////////////////////////////////////////////
$("#elan .elanRowKredit span").on("click",function(){
    $(this).prev().prop("checked",!$(this).prev().prop("checked"));
})

$("#elan .tehcizat label span").on("click",function(){
    $(this).prev().prop("checked",!$(this).prev().prop("checked"));
})

$("#elan .elanRowCheck label").on("click",function(e){
    $("#elan .elanRowCheck label").find("input").prop("checked",false);
    $(this).find("input").prop("checked",true);
})


$("#elan .tehcizat label").on("click",function(){
    var str="";
    for(var i =0 ; i<$("#elan .tehcizat label input").length;i++){
        if($($("#elan .tehcizat label input")[i]).prop("checked")){
            if(str == ""){
                    str+=$($("#elan .tehcizat label span")[i]).text();  
                }else {
                    str+=";"+$($("#elan .tehcizat label span")[i]).text();
                } 
        }
    }
    $("#elan .tehcizat input[name=CheckedTehcizat]").val(str);
   
})


var addedFotoSum = 0;


// Dive click olunanda dialog fileni acir
$(".shekil .fotoContent .addFoto").on("click",function(e){
    if(addedFotoSum < 21){
        $(".shekil .fotoContent #fileInput").trigger('click');
    }  // if scope     
     
});


// Dialog File den foto secilende iwe duwur
$(".shekil .fotoContent #fileInput").bind("change",function(e){


      var output = window.URL.createObjectURL(e.target.files[0]);
      var alt = $(".shekil .fotoContent #fileInput").val();
      addedFotoSum++;

      // addedFoto itemi yaradmaq
      $("<div></div>",{
        class: "addedFotoItem",
        })
        .appendTo($(".shekil .fotoContent .addedFoto"));

        // img divi artirmaq
    $("<div></div>",{
        class: "imgDiv",
        })
    // .append($('<img  src="'+output+'" alt="'+alt+'" />'))
    .appendTo($($(".shekil .fotoContent .addedFoto .addedFotoItem")[addedFotoSum-1]));


    $('<img  src="'+output+'" alt="'+alt+'" />').appendTo($($(".shekil .fotoContent .addedFoto .addedFotoItem .imgDiv")[addedFotoSum-1]));

    

    $("<div></div>",{
        class: "fotoIcon",
      }).append('<i class="fa fa-times" aria-hidden="true" onclick="DeleteThisFoto(this)"></i>').append('<i class="fa fa-repeat" aria-hidden="true"onclick="RotateFotoRight(this)"></i>').append('<i class="fa fa-undo" aria-hidden="true" onclick="RotateFotoLeft(this)"></i>').appendTo($($(".shekil .fotoContent .addedFoto .addedFotoItem")[addedFotoSum-1]));


    $(".shekil .fotoContent #fileInput").wrap('<form>').closest('form').get(0).reset();

    ArtirilmiwFotolar();
 });


// Fotonu silmek 
function DeleteThisFoto(e){
   $(e).parent().parent().remove();
   addedFotoSum--;
    ArtirilmiwFotolar();

}

// Fotonu Sola dondermek
function RotateFotoLeft(e){
    var r1 = $(e).parent().prev().find("img").val();
    if( r1 == "0" || r1 == "") r1 = "-90";
    else if( r1 == "-90" ) r1 = "-180";
    else if( r1 == "-180" ) r1 = "-270";
    else if( r1 == "-270" ) r1 = "0";
    else if( r1 == "90" ) r1 = "0";
    else if( r1 == "180" ) r1 = "90";
    else if( r1 == "270" ) r1 = "180";
   $(e).parent().prev().find("img").css({
    transform : 'rotate('+r1+'deg)',
    width : '100%',
    height : '100%'
});
   $(e).parent().prev().find("img").val(r1);
}

// Fotonu Saga dondermek
function RotateFotoRight(e){
    var r1 = $(e).parent().prev().find("img").val();
    if( r1 == "0" || r1 == "") r1 = "90";
    else if( r1 == "-90" ) r1 = "0";
    else if( r1 == "-180" ) r1 = "-90";
    else if( r1 == "-270" ) r1 = "-180";
    else if( r1 == "90" ) r1 = "180";
    else if( r1 == "180" ) r1 = "270";
    else if( r1 == "270" ) r1 = "0";
   $(e).parent().prev().find("img").css({
    transform : 'rotate('+r1+'deg)',
    width : '100%',
    height : '100%'
});
   $(e).parent().prev().find("img").val(r1);
}

// Artirilmiw fotolar
function ArtirilmiwFotolar(){

    var str="";
    for(var i =0 ; i<$(".shekil .fotoContent .addedFotoItem img").length;i++){
        if(str == ""){
            str+=$($(" .shekil .fotoContent .addedFotoItem img")[i]).attr("alt");  
        }else {
            str+=";"+$($(".shekil .fotoContent .addedFotoItem img")[i]).attr("alt");
        } 
    }

    $(".shekil .fotoContent #ArtirilmiwFotolar").val(str);
}


//========================================================================================
// ================================   Video artirmaq       ================================
// Dive click olunanda dialog fileni acir
$(".video .videoContent .addVideo").on("click",function(e){
    $(".video .videoContent #videoInput").wrap('<form>').closest('form').get(0).reset();
    
    $(".video .videoContent #videoInput").trigger('click');
});

$(".video .videoContent #videoInput").bind("change",function(e){
//http://stackoverflow.com/questions/37143491/can-i-set-a-video-length-limit-on-a-html5-file-upload   

var URL = window.URL || window.webkitURL

    var output = window.URL.createObjectURL(this.files[0]);
    var output2 = $(".video .videoContent #videoInput").val();


    $(".video .videoContent #ArtirilmiwVideo").val(output2);

   $(".video .videoContent .addedVideo .addedVideoItem").show();

$(".video .videoContent .addedVideoItem video")[0].src =  output;


});
$(".video .videoContent .addedVideo .addedVideoItem i").on("click",function(){
    $(this).parent().hide();
    $(".video .videoContent .addedVideoItem video")[0].src = "";
    $(".video .videoContent #videoInput").wrap('<form>').closest('form').get(0).reset();

});

// ================================   Video artirmaq       ================================
//========================================================================================




//Elaqe Telefon hissesi
$("#elan .elaqe .elaqeItem .addPhone").keyup(function(e){

        var str = this.value;
    if (this.value != this.value.replace(/[^0-9-\.]/g, '')) {
       this.value = this.value.replace(/[^0-9-\.]/g, '');
    }
    else {
        if(e.keyCode == 8){
            if(str.length == 3 || str.length == 7 || str.length == 10){
                var str1 = "";
                for (var i = 0; i < str.length-1; i++) {
                    str1 += str[i]
                }
                this.value = str1;
            }
        }
        else{
            if(str.length == 3 || str.length == 7 || str.length == 10){
                       str = str + "-";
            }
             this.value = str;
        }  

    }

});

