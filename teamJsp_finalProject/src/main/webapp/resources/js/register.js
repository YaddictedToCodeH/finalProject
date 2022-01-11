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
})
