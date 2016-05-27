/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function (){   
//    $(document).on("submit", "#searchForm", function(event) {
        $("#submitSearch").click(function(){
        $.ajax({
            type: "post",
            url : 'searchController',
            data: {
                "titleInclude" : $("#titleInclude").val(),
                "bodyInclude" : $("#bodyInclude").val(),
                "tagInclude" : $("#tagInclude").val(),
                "adsType" : $("#adsType").val(),
                "minSalary" : $("#minSalary").val(),
                "maxSalary" : $("#maxSalary").val()
            },
            success: function (responseText){
                var $mainDiv = $("<div>").appendTo($("#adsPanels"));
                $mainDiv.addClass("col-md-12");
            
                $.each(responseJson, function(index, ads){
                    var $panelDefaultDiv = $("<div>", {class: "panel panel-default"});
                
                    //Create heading panel
                    var $panelHeadingDiv = $("<div>", {class: "panel-heading"});
                    var $rowDiv = $("<div>", {class: "row"});
                
                    var $imgDiv = $("<div>", {class: "col-md-2"});
                
                    var $img = $("<img>");
                    $img.attr('src', ads.companyImageDir);
                    $img.attr('width', "100px");
                    $img.attr('height', "100px");
                    $img.appendTo($imgDiv);
                    $imgDiv.appendTo($rowDiv);
                
                    var $adsHeadingContent = $("<div>", {class: "col-md-10"});
                    $adsHeadingContent.css("margin-top", "20px");
                
                    var $titleLabel = $("<label>", {class: "persian-label persian-heading"});
                    $titleLabel.text(ads.title);
                    $adsHeadingContent.append($titleLabel);
                    $("<br>").appendTo($adsHeadingContent);
                
                    var $companyNameLabel = $("<label>", {class: "persian-label persian-heading"});
                    $companyNameLabel.css("font-size", "20px");
                    $companyNameLabel.text("شرکت: " + ads.companyName);
                    $adsHeadingContent.append($companyNameLabel);
                
                    $adsHeadingContent.appendTo($rowDiv);
                    $rowDiv.appendTo($panelHeadingDiv);
                
                    $panelHeadingDiv.appendTo($panelDefaultDiv);
                    //end of heading panel
                
                
                    //Create body panel
                    var $panelBodyDiv = $("<div>", {class: "panel-body"});
                
                    var $div1 = $("<div>");
                    $div1.css("margin", "15px");
                
                    //Check the image of ads value
                    if(ads.adsImageDir !== "null"){
                        var $adsImg = $("<img>");
                        $adsImg.attr('src', ads.adsImageDir);
                        $adsImg.appendTo($div1);
                        $adsImg.attr('width', "800px");
                        $adsImg.attr('height', "300px");
                    
                        $("<hr>").appendTo($div1);
                    }
                
                    var $contentLabel =  $("<label>", {class: "persian-label persian-text"});
                    $contentLabel.text(ads.content);
                    $contentLabel.appendTo($div1);
                
                    $("<hr>").appendTo($div1);
                
                    var $typeLabel = $("<label>", {class: "persian-label persian-text"});
                    $typeLabel.text("نوع کار: " + ads.type);
                    $typeLabel.appendTo($div1);
                
                    $("<hr>").appendTo($div1);
                
                    var $minSalaryLabel = $("<label>", {class: "persian-label persian-text"});
                    $minSalaryLabel.text("کمترین حقوق: " + ads.minSalary);
                    $minSalaryLabel.appendTo($div1);
                
                    $("<br>").appendTo($div1);
                
                    var $maxSalaryLabel = $("<label>", {class: "persian-label persian-text"});
                    $maxSalaryLabel.text("بیشترین حقوق: " + ads.maxSalary);
                    $maxSalaryLabel.appendTo($div1);
                
                
                    $div1.appendTo($panelBodyDiv);
                    $panelBodyDiv.appendTo($panelDefaultDiv);
                    //end of body panel
                
                    $panelDefaultDiv.appendTo($mainDiv);
                   
                   
                    //$("#ajaxRes").text(responseText).delay(2000).fadeOut("slow");;
                }
                        )}
        })
    });
});

