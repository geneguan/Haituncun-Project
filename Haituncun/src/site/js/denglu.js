document.addEventListener('DOMContentLoaded',()=>{
            let username = document.querySelector('#username');
            let password = document.querySelector('#password');
            let btnLogin = document.querySelector('.btnLogin');

            let statusCode = [200,304];

            let xhr = new XMLHttpRequest();
            xhr.onload = function(){
                if(statusCode.indexOf(xhr.status)>=0){
                    let res = xhr.responseText;

                    if(res == 'success'){
                        location.href = '../index.html';
                        alert('登陆成功');
                        // var login_a = document.querySelector('.login-show-a');
                        // login_a.innerText = username.value + '用户已登录';
                    }else{
                        alert('用户名或密码错误');
                        
                    }
                }
            }

            btnLogin.onclick = function(){
                let _username = username.value;
                let _password = password.value;

                xhr.open('get',`../api/denglu.php?username=${_username}&password=${_password}`,true);
                xhr.send();
            }
        })