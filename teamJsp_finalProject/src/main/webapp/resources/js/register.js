$(function(){
    $("#findAddr").click(function(){
        console.log("클릭");
        new daum.Postcode({
            oncomplete: function(data) {
                $("#addrNum").val(data.zonecode);
                $("#addr1").val(data.address);
                if(data.buildingName != ""){
                    $("#addr1").val(data.address + " (" + data.buildingName + ")");
                }
            }
        }).open();
    })
    
    //이메일 인증
    var code = "";
    $("#sendMail").click(function(){
        var sm_email = $("#mailId").val() + "@" +$("#mailAddress").val();
        console.log(sm_email);
        $.ajax({
            type:"GET",
            url:"mailCheck?sm_email=" + sm_email,
            cache : false,
            success:function(data){
                if(data == "error"){
                    $("#mailAddress").attr("autofocus",true);
                    $(".emailCheck").text("유효한 이메일 주소를 입력해주세요.");
                    $(".emailCheck").css("color","red");
                    console.log("에러");
                }else{	        		
                    alert("인증번호 발송이 완료되었습니다.\n입력한 이메일에서 인증번호 확인을 해주십시오.");
                    $(".successEmailChk").text("인증번호를 입력한 뒤 이메일 인증을 눌러주십시오.");
                    $(".successEmailChk").css("color","green");
                    console.log("성공");
                    code = data;
                }
            }
        });
    });

    //이메일 인증번호 대조
    $("#checkMail").click(function(){
        if($("#certificationNum").val() == code){
            $(".successEmailChk").text("인증번호가 일치합니다.");
            $(".successEmailChk").css("color","green");
            $("#certificationNum").attr("disabled",true);
        }else{
            $(".successEmailChk").text("인증번호가 일치하지 않습니다. 확인해주시기 바랍니다.");
            $(".successEmailChk").css("color","red");
            $("#certificationNum").attr("autofocus",true);
        }
    });

})
