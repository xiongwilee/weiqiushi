{{function name=form}}

<style type="text/css" media="screen">

.form-description{
    color:#a3a3a3;
    height:32px;
    line-height:32px;
    padding-bottom:12px;
}

</style>

<!--HTML goes here-->
<p id="FormDesc" class="form-description">
    {{if $is_pass_login}}
    请再次输入您的百度帐号密码完成绑定。
    {{else}}
    您正在使用{{$osinfo_name}}账号登录百度，为了今后更方便的使用，请绑定一个百度账号：
    {{/if}}
</p>

<div class="form-wrapper" id="LoginWrp">
    <div id="Login">
        
    </div>
    <p class="notify" >
        如果还没有百度账号，<a href="#" id="changeToReg">请点这里</a>
    </p>
</div>


<div class="form-wrapper" id="RegWrp">
    <div id="Reg">
        
    </div>
    <p class="notify">
        如果已有百度账号，<a href="#" id="changeToLogin">请点这里</a>
    </p>
</div>


<!--HTML END-->




{{/function}}



