

app.controller("HomeCtrl", function ($scope, $http, $window, $timeout) {
    /*================== Danh sách các biến ===================================scope biến chuyển đổi dữ liệu giữa view và ctrl */
    $scope.listAllData = {};
    $scope.listDanhsachsp = {};
    $scope.listTinTuc = {};
    /*=================== Thao tác dữ liệu ==================================== */
    $scope.LoadData = function () {
        $http({
            method: 'GET',
            url: '/Home/AjaxGetHome',
        }).then(function (response) {
            $scope.listAllData = response.data;
            $timeout(function () {
                $('.owl-carousel.hight').owlCarousel({
                    loop: true,
                    margin: 20,
                    nav: true,
                    dots: false,
                    autoplay: true,
                    autoplayTimeout: 3000,
                    autoplayHoverPause: true,
                    responsive: {
                        0: {
                            items: 2
                        },
                        600: {
                            items: 3
                        },
                        1000: {
                            items: 5
                        }
                    }
                })
            }, 0);
           
        });
    };
    $scope.LoadTinTuc = function (MaTT) {
        $http({
            method: 'GET',
            url: '/Home/GetTinTuc',
        }).then(function (response) {
            $scope.listTinTuc = response.data;
        });
    };
    $scope.LoadDataMenu = function (MaLoaiSP) {
        $http({
            method: 'GET',
            url: '/Home/GetDanhsach',
        }).then(function (response) {
            $scope.listDanhsachsp = response.data;
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




