$(document).ready(function () {
    reCalculateTotalAmount();
    $('.btn-number').click(function (e) {
        e.preventDefault();

        fieldName = $(this).attr('data-field');
        type = $(this).attr('data-type');
        var input = $("input[name='" + fieldName + "']");
        var currentVal = parseInt(input.val());
        if (!isNaN(currentVal)) {
            if (type == 'minus') {

                if (currentVal > input.attr('min')) {
                    input.val(currentVal - 1).change();
                }
                if (parseInt(input.val()) == input.attr('min')) {
                    $(this).attr('disabled', true);
                }

            } else if (type == 'plus') {

                if (currentVal < input.attr('max')) {
                    input.val(currentVal + 1).change();
                }
                if (parseInt(input.val()) == input.attr('max')) {
                    $(this).attr('disabled', true);
                }

            }
        } else {
            input.val(0);
        }
    });
    $('.songuoi-number').focusin(function () {
        $(this).data('oldValue', $(this).val());
    });
    $('.songuoi-number').change(function () {

        minValue = parseInt($(this).attr('min'));
        maxValue = parseInt($(this).attr('max'));
        valueCurrent = parseInt($(this).val());

        name = $(this).attr('name');
        if (valueCurrent >= minValue) {
            $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
        } else {
            alert('Sorry, the minimum value was reached');
            $(this).val($(this).data('oldValue'));
        }
        if (valueCurrent <= maxValue) {
            $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
        } else {
            $("#maxSoNguoiAlert").fadeTo(2000, 500).slideUp(500, function () {
                $("#maxSoNguoiAlert").slideUp(500);
            });
            $(this).val($(this).data('oldValue'));
        }


    });
    $(".songuoi-number").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
            // Allow: Ctrl+A
            (e.keyCode == 65 && e.ctrlKey === true) ||
            // Allow: home, end, left, right
            (e.keyCode >= 35 && e.keyCode <= 39)) {
            // let it happen, don't do anything
            return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
            e.preventDefault();
        }
    });

    $('#ThemNguoiDiCung').click(function (e) {
        e.preventDefault();
        var nguoidicung = $('#nguoidicunghide').clone();
        nguoidicung.appendTo('#nguoidicung');
        nguoidicung.removeClass('d-none');

    });

    $('input:radio[name="cachThanhToan"]').change(
        function () {
            if ($(this).is(':checked') && $(this).val() == 'TIEN_MAT') {
                $("#hienthithanhtoan").hide();
            }
        });

    $('input:radio[name="cachThanhToan"]').change(
        function () {
            if ($(this).is(':checked') && $(this).val() == 'CHUYEN_KHOAN') {
                $("#hienthithanhtoan").show();
            }
        });
});

function XoaNguoiDiCung(element) {
    $(element).parent().parent().remove();
}

$(document).on("keydown", "input", function (e) {
    if (e.which == 13) e.preventDefault();
});


function reCalculateTotalAmount() {
    var soNguoiLon = $('input[name="soNguoiLon"]').val();
    var soTreVua = $('input[name="soTreVua"]').val();
    var soTreNho = $('input[name="soTreNho"]').val();
    $("#tongsonguoi").text(parseInt(soNguoiLon) + parseInt(soTreVua) + parseInt(soTreNho));

    var donGiaNguoiLon = parseInt($("#donGiaNguoiLon").text());
    var donGiaTreVua = parseInt($("#donGiaTreVua").text());

    $("#tongtien").text(addCommas((donGiaNguoiLon * soNguoiLon + donGiaTreVua * soTreVua)) + " VNĐ");
}


function addCommas(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + '.' + '$2');
    }
    return x1 + x2;
}