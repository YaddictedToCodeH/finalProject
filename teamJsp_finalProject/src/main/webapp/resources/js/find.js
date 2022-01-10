$(function(){
    $(".certificationRequest").click(function(){
        var firstInput = $(".firstInput").val();
        var emailId = $("#emailId").val();
        var emailAddr = $("#emailAddr").val();
        var fullEmail = emailId + '@' + emailAddr;
        if(firstInput == ""){
            if($("input[name='name']").val()==""){
                $(".errorMsg").html("* 이름을 입력 후 인증요청 버튼을 눌러주세요.");
            }else if($("input[name='id']").val()==""){
                $(".errorMsg").html("* 아이디를 입력 후 인증요청 버튼을 눌러주세요.");
            }
            $(".error").css("display" , "table-row");
        }else if(emailId == "" || emailAddr == ""){
            $(".error").css("display" , "table-row");
            $(".errorMsg").html("* 이메일을 입력 후 인증요청 버튼을 눌러주세요.");
        }else if(!validateEmail(fullEmail)){
            $(".error").css("display" , "table-row");
            $(".errorMsg").html("* 이메일 형식을 확인 후 다시 입력해주세요.");
        }else{
            $(".error").css("display" , "none");
            $("input").attr("readonly", true);
            $("input[name='certificationNum']").removeAttr("readonly").removeAttr("disabled");
        }
    });
    $(".certificationOk").click(function(){
        var certificationNum = $("input[name='certificationNum']").val();
        if(certificationNum == ""){
            $(".error").css("display" , "table-row");
            $(".errorMsg").html("인증번호를 확인 후 재입력 해주세요.");
        }else{
            $(".error").css("display" , "none");
            $("input[name='certificationNum']").attr("readonly", true);
        }
    });
})

function selectEmail(ele){
    var $ele = $(ele);
    var $email = $('input[name=emailAddr]');
    // '1'인 경우 직접입력
    if($ele.val() == "1"){
        $email.attr('readonly', false);
        $email.val('');
    }else{
        $email.attr('readonly', true);
        $email.val($ele.val());
    } 
}

function validateEmail(sEmail) {
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (filter.test(sEmail)) {
        return true;
    }else {
        return false;
    }
}