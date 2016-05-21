/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function (){
    console.log("Runnung");
   
   $(document).on("submit", "#userUpdateForm", function(event) {
       
    var $form = $(this);
    
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
                   console.log("sasa");
                   $("#ajaxRes").text(responseText);
               }
    });
    event.preventDefault(); // Important! Prevents submitting the form.
});
    
//    $("#updateButtun").click(function(){
//       $.ajax({
//               type: "post",
//               url : 'userProfileController',
//               data: {
//                   email : $("#email").val(),
//                   password : $("#password").val(),
//                   firstName: $("#firstName").val(),
//                   lastName: $("#lastName").val(),
//                   city : $("#city").val()
//               },
//               success: function (responseText){
//                   console.log("sasa");
//                   $("#ajaxRes").text(responseText);
//               }
//           });
//           console.log("dn");
//   }); 
});
