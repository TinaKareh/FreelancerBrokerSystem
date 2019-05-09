/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validateform(){
    var email = document.myLogin.email.value;
    var password= document.myLogin.password.value;
    
    if(email == null || email == ""){
        alert("Email can't be blank");
        return false;
    } else if(password.length<8){
        alert("Password must be at lest 8 characters long");
        return false;
    }
}
function matchpass(){
    var firstPass = document.myForm.password.value;
    var secondPass = document.myForm.confirmPass.value;
    
    if(firstPass == secondPass){
        return true;
    }
    else{
        alert("password must be same!");
        return false;
    }
}
