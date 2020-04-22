$(document).ready(function() {
    console.log(base_url);
    // nut tang so luong tung sp
    $(".increase").click(function(e) {
        e.preventDefault();
        var tongtien;
        let id = $(this).data('id');
        // var pr= document.getElementById("pr_"+id+"");
        var pr = parseFloat($("#pr_" + id + "").data('id'));
        var qt = document.getElementById("qt_" + id + "");
        var tt = document.getElementById("tt_" + id + "");
        var sst = parseFloat(qt.value);
        var soLuong=parseFloat(sst+1);
        if (!isNaN(sst)) {
            qt.value++;

            tongtien = pr * (sst + 1);
            tt.innerHTML = tongtien;
            updateSL(id, soLuong);
        }


        //    alert(sst++);

        // $("qt_" + id).innerHTML = $("qt_" + id).val + 1;
    });
    //sl nut giam sô luong tung sp
    $(".reduced").click(function(e) {
        e.preventDefault();
        var tongtien;
        let id = $(this).data('id');
        // var pr= document.getElementById("pr_"+id+"");
        var pr = parseFloat($("#pr_" + id + "").data('id'));
        var qt = document.getElementById("qt_" + id + "");
        var tt = document.getElementById("tt_" + id + "");
        var sst = parseFloat(qt.value);
       
        if (!isNaN(sst) && sst > 1) {
            qt.value--;
            tongtien = pr * (sst - 1);
            tt.innerHTML = tongtien;
            updateSL(id, sst - 1);
        }
    });
});



function updateSL(id, soLuong) {
    let url = base_url + "/cart/updateSL";
    let data = {
        "maH": id,
        "soLuong": soLuong
    }
    try {
        $.post(url, data);

    } catch (error) {
        console.error(error);
    }
}

$("#hoantat").click(function(e) {
    e.preventDefault();
    let url = base_url + "/checkout/thanhtoan";
    var name = document.getElementById("name").value;
    var number = document.getElementById("number").value;
    var your_email = document.getElementById("email").value;
    var add1 = document.getElementById("add1").value;
    var message = document.getElementById("message").value;
    if (isNullOrEmpty(name) || isNullOrEmpty(number) || isNullOrEmpty(your_email) || isNullOrEmpty(add1) || isNullOrEmpty(message)) {
        alert("Vui lòng điền đủ thông tin!");

    } else {
        let data = {
            "name": name,
            "number": number,
            "your_email": your_email,
            "add1": add1,
            "message": message
        }
        try {
            $.post(url, data);
            alert("Thanh toán thành công!");
            window.location.reload();
        } catch (error) {
            console.error(error);
        }
    }

});

function isNullOrEmpty(s) {
    return (s == null || s === "");
}