/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function (){
      
   $(document).on("submit", "#userUpdateForm", function(event) {
        $.ajax({
               type: "post",
               url : 'userProfileController',
               data: {
                   "email" : $("#email").val(),
                   "password" : $("#password").val(),
                   "firstName" : $("#firstName").val(),
                   "lastName" : $("#lastName").val(),
                   "city" : $("#city").val()
               },
               success: function (responseText){
                   $("#ajaxRes").text(responseText)
                           .delay(2000)
                           .fadeOut('slow');
               },
               error: function(){
                   $("#ajaxRes").text(responseText)
                           .css("background-color","yellow")
                           .delay(2000).fadeOut('slow');
               }
    });
    event.preventDefault(); // Important! Prevents submitting the form.
});

});
