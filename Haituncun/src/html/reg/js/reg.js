/* 
* @Author: Marte
* @Date:   2018-10-20 16:06:08
* @Last Modified by:   Marte
* @Last Modified time: 2018-10-24 21:59:42
*/

$(function(){

    // 验证码显示
    CodeShow();
    $('.codeShow').click(CodeShow);
    function CodeShow(){
        var $res = randomCode(4);
        $('.codeShow').html($res);
    }

    // 注册用户名验证
     
    let username1 = document.querySelector('#username');
    let password1 = document.querySelector('#password');
    let password2 = document.querySelector('#passwordAgain');
    let regBtn = document.querySelector('#regBtn');

    let statusCode2 = [200,304];

    let xhr = new XMLHttpRequest();
    xhr.onload = function(){
        if(statusCode2.indexOf(xhr.status)>=0){
            let res = xhr.responseText;
            if(res === 'no'){
                username1.value = '';
                username1.focus();
                alert('用户名太受欢迎，已被注册！');

            }
            if(res === 'yes'){

            }

        }
    }

    // 检测用户是否被占用
    username1.onblur = ()=>{
        xhr.open('get','api/check_user.php?username='+username1.value,true);
        xhr.send();
    }

    let xhr_reg = new XMLHttpRequest();
    xhr_reg.onload = function(){
        if(statusCode2.indexOf(xhr_reg.status)>=0){
            let res = xhr_reg.responseText;
            if(res === 'success'){
                alert('注册成功！');
                location.href = 'http://localhost:1001/index.html';
            }else{
                alert('注册失败！');
            }
        }
    }

    // 注册
    regBtn.onclick = function(){
        // 获取用户名，密码
        let _username = username1.value;
        let _password = password1.value;

        xhr_reg.open('get',`api/reg.php?username=${_username}&password=${_password}`,true);
        xhr_reg.send();

    }

    let miShow1 = document.querySelector('.miShow1');
    let img1 = miShow1.children[0];
    let miShow2 = document.querySelector('.miShow2');
    let img2 = miShow2.children[0];

    let b = 1;
    miShow1.onclick = function(){
        if(b == 1){
            password1.type = 'text';
            img1.src = 'images/mi_1.png';
            b = 0;
        }else{
            password1.type = 'password';
            img1.src = 'images/mi_2.png';
            b = 1;
        }
    }

    let c = 1;
    miShow2.onclick = function(){
        if(c == 1){
            password2.type = 'text';
            img2.src = 'images/mi_1.png';
            c = 0;
        }else{
            password2.type = 'password';
            img2.src = 'images/mi_2.png';
            c = 1;
        }
    }

    // 密码验证
    password2.onchange = ()=>{
        if(password2.value != password1.value){
            alert('两次输入的密码不一致！');
            password2.focus();
        }
    }

    // 验证码
    let code = document.querySelector('#code');
    let codeShow = document.querySelector('.codeShow');

    code.onchange = ()=>{
        if(code.value != codeShow.innerText){
            alert('验证码输入错误！');
        }
    }

});


