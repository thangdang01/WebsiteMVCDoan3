////////////////////////////



app.controller("ChiTietCtrl", function ($scope, $http, $window) {
    /*================== Danh sách các biến =================================== */
    $scope.SanPham = {};
    /*=================== Thao tác dữ liệu ==================================== */
    $scope.LoadChitiet = function (MaSP) {
        $http({
            method: 'GET',
            url: 'http://localhost:49776/SanPham/GetChiTiet/?MaSP=' + MaSP,
        }).then(function (response) {
            $scope.SanPham = response.data;
        });
    };
    $scope.addToCart = function (sp) {
        let item = {};
        item.MaSP = sp.MaSP;
        item.TenSP = sp.TenSP;
        item.Anh = sp.Anh;
        item.BaoHanh = sp.BaoHanh;
        item.Gia = sp.Gia;
        item.MoTa = sp.MoTa;
        item.quantity = 1;
        var list;
        if (localStorage.getItem('cart') == null) {
            list = [item];
        } else {
            list = JSON.parse(localStorage.getItem('cart')) || [];
            let ok = true;
            for (let x of list) {
                if (x.MaSP == item.MaSP) {
                    x.quantity += 1;
                    ok = false;
                    break;
                }
            }
            if (ok) {
                list.push(item);
            }
        }
        localStorage.setItem('cart', JSON.stringify(list));
        alert("Đã thêm giỏ hàng thành công");
    }
});

