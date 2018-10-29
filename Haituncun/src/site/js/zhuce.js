/* 
* @Author: Marte
* @Date:   2018-10-24 10:56:55
* @Last Modified by:   Marte
* @Last Modified time: 2018-10-24 17:40:07
*/

document.addEventListener('DOMContentLoaded',()=>{
            var username = document.querySelector('#username');
            var password = document.querySelector('#password');
            var btnReg = document.querySelector('.btnReg');

            var statusCode = [200,304];

            // var _username = username.value;

            // username.onblur = function(){
            //     var reg = /^1[3-9]\d{9}$/;
            //     if(!reg.test(_username)){
            //         alert('手机号码不合法');
            //         return false;
            //     }
            // }

            
            let xhr = new XMLHttpRequest();
            xhr.onload = function(){
                if(statusCode.indexOf(xhr.status)>=0){
                    let res = xhr.responseText;

                    // 获取父元素
                    let formGroup = username.parentNode;
                    let txt = formGroup.querySelector('.help-block');
                    let icon = formGroup.querySelector('.form-control-feedback');

                    if(res === 'no'){
                        formGroup.classList.remove('has-success');
                        icon.classList.remove('sr-only','glyphicon-ok');
                        icon.classList.add('glyphicon-remove');
                        formGroup.classList.add('has-error','has-feedback');
                        txt.innerText = '用户名太受欢迎';
                    }else if(res === 'yes'){
                        formGroup.classList.remove('has-error');
                        icon.classList.remove('sr-only','glyphicon-remove');
                        icon.classList.add('glyphicon-ok');
                        formGroup.classList.add('has-success','has-feedback');
                        txt.innerText = '';
                    }

                }
            }

            // 检测用户是否被占用
            username.onblur = ()=>{
                xhr.open('get','../api/check_user.php?username='+username.value,true);
                xhr.send();
            }


            let xhr_reg = new XMLHttpRequest();
            xhr_reg.onload = function(){
                if(statusCode.indexOf(xhr_reg.status)>=0){
                    let res = xhr_reg.responseText;
                    if(res === 'success'){
                        alert('注册成功');
                        location.href = '../html/denglu.html';
                        
                    }else{
                        alert('注册失败');
                    }
                }
            }

            // 注册
            btnReg.onclick = function(){
                // 获取用户名，密码
                var _username = username.value;
                var _password = password.value;
                

                xhr_reg.open('get',`../api/zhuce.php?username=${_username}&password=${_password}`,true);
                xhr_reg.send();
                
            }
})