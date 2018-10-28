/* 
* @Author: Marte
* @Date:   2018-10-24 19:59:34
* @Last Modified by:   Marte
* @Last Modified time: 2018-10-24 21:45:07
*/

$(document).ready(function(){
    
    let username2 = document.querySelector('#username');
    let password2 = document.querySelector('#password');
    let regBtn = document.querySelector('#loginBtn');

    let statusCode = [200,304];

    let xhr = new XMLHttpRequest();
    xhr.onload = function(){
        if(statusCode.indexOf(xhr.status)>=0){
            let res = xhr.responseText;
             console.log(res);
            if(res == 'success'){
                alert('欢迎来到海豚村！');
                location.href = '../../../index.html';
            }else{
                alert('用户名或密码错误！');
                
            }
        }
    }

    loginBtn.onclick = function(){
        let _username2 = username2.value;
        let _password2 = password2.value;

        xhr.open('get',`api/login.php?username=${_username2}&password=${_password2}`,true);
        xhr.send();
    }


    let miShow = document.querySelector('.miShow');
    let img = miShow.children[0];

    let b = 1;
    miShow.onclick = function(){
        if(b == 1){
            password2.type = 'text';
            img.src = 'images/mi_1.png';
            b = 0;
        }else{
            password2.type = 'password';
            img.src = 'images/mi_2.png';
            b = 1;
        }
    }     

});