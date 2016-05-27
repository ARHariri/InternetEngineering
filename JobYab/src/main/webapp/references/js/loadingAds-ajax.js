/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function (){   
    $.ajax({
        type: "get",
        url : 'loadAdsController',
        data: {
            "action" : "load"
        },
        success: function (responseJson){
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
                $companyNameLabel.text(ads.companyName);
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
                if(ads.adsImageDir != "null"){
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
                $typeLabel.text("نوع کار:" + ads.type);
                $typeLabel.appendTo($div1);
                
                $("<hr>").appendTo($div1);
                
                var $minSalaryLabel = $("<label>", {class: "persian-label persian-text"});
                $minSalaryLabel.text("کمترین حقوق:" + ads.minSalary);
                $minSalaryLabel.appendTo($div1);
                
                $("<br>").appendTo($div1);
                
                var $maxSalaryLabel = $("<label>", {class: "persian-label persian-text"});
                $maxSalaryLabel.text("بیشترین حقوق" + ads.maxSalary);
                $maxSalaryLabel.appendTo($div1);
                
                
                $div1.appendTo($panelBodyDiv);
                $panelBodyDiv.appendTo($panelDefaultDiv);
                //end of body panel
                
                $panelDefaultDiv.appendTo($mainDiv);
                
            });
            
//            var $table = $("<table>").appendTo($("#parent")); // Create HTML <table> element and append it to HTML DOM element with ID "somediv".
//            
//                $.each(responseJson, function(index, product) {    // Iterate over the JSON array.
//                    $("<tr>").appendTo($table)                     // Create HTML <tr> element, set its text content with currently iterated item and append it to the <table>.
//                            .append($("<td>").text(product.adsTitle))        // Create HTML <td> element, set its text content with id of currently iterated product and append it to the <tr>.
//                            .append($("<td>").text(product.adscontent));      // Create HTML <td> element, set its text content with name of currently iterated product and append it to the <tr>.
//                });
        }
    })
});