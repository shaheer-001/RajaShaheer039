/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let loginForm = document.querySelector('.login-form');

document.querySelector('#login-btn').onclick = () =>{
    loginForm.classList.toggle('active');
}

let registrationForm = document.querySelector('.registration-form');

document.querySelector('#register').onclick = () =>{
    registrationForm.classList.toggle('active');
}

document.querySelector('#cross').onclick = () =>{
    registrationForm.classList.toggle('active');
}






