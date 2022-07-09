var app = angular.module("DecorPhongApp", []);

app.controller("SanPhamCtrl", function ($scope, $http, $window) {
    /*================== Danh sách các biến =================================== */
    $scope.listLoaiSP = [];
    $scope.TenLoaiSP = [];
    $scope.Item;
    $scope.btntxt = "Thêm mới";
    $scope.LoadLoaiSP = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:49776/AdminSP/GetSP',
        }).then(function (response) {
            $scope.listLoaiSP = response.data;
        });
    };
    

    $scope.LoaiSPname = function () {
        $http({
            method: 'GET',
            url: 'http://localhost:49776/AdminSP/GetLSP',
        }).then(function (response) {
            $scope.TenLoaiSP = response.data;
        });
    };

    $scope.Xoa = function (item) {
        if (!confirm("Bạn có muốn xóa loại sản phẩm: " + item.sanpham_name + " không?")) {
            return;
        }
        $http({
            method: 'POST',
            url: 'http://localhost:49776/AdminSP/DeleteSP',
            datatype: 'json',
            data: JSON.stringify(item)
        }).then(function (response) {
            if (response.data == 1) {
                alert('Xóa thành công');
                $window.location.reload();
                $scope.LoadLoaiSP();
            }
            else {
                alert('Xóa thành công');
            }
        });
    };




    $scope.AddSanPham = function () {

        var sp = {
        }
        sp.MaSP = $scope.MaSP;
        sp.TenSP = $scope.TenSP;
        sp.Gia = $scope.Gia;
        

        var file = document.getElementById('file').files[0];

        if ($scope.btntxt == "Thêm mới") {

            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:49776/AdminSP/Upload',
                }).then(function (res) {
                    sp.Anh = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:49776/AdminSP/AddSanPham',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data.data == 1) {
                            alert('Thêm thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi a');

                        }
                    });
                });
            } else {
                $http({
                    method: 'POST',
                    url: 'http://localhost:49776/AdminSP/AddSanPham',
                    datatype: 'json',
                    data: JSON.stringify(sp)
                }).then(function (response) {
                    if (response.data.data == 1) {
                        alert('Thêm thành công');
                        $window.location.reload();
                        $scope.LoadLoaiSP();
                    }
                    else {
                        alert('có lỗi b');
                    }
                });
            }
        }

        else {
            //sp.sanpham_id = $scope.Item.sanpham_id;
            if (file) {
                const formData = new FormData();
                formData.append('file', file);
                $http({
                    method: 'POST',
                    headers: {
                        'Content-Type': undefined
                    },
                    data: formData,
                    url: 'http://localhost:49776/AdminSP/Upload',
                }).then(function (res) {
                    sp.Anh = res.data;
                    $http({
                        method: 'POST',
                        url: 'http://localhost:49776/AdminSP/UpdateSanPham',
                        datatype: 'json',
                        data: JSON.stringify(sp)
                    }).then(function (response) {
                        if (response.data == 1) {
                            alert('Cập nhật thành công');
                            $window.location.reload();
                            $scope.LoadLoaiSP();
                        }
                        else {
                            alert('Có lỗi c');
                        }
                    });
                });
            } else {
                sp.Anh = $scope.Item.Anh;
                $http({
                    method: 'POST',
                    url: 'http://localhost:49776/AdminSP/UpdateSanPham',
                    datatype: 'json',
                    data: JSON.stringify(sp)
                }).then(function (response) {
                    if (response.data.data == 1) {
                        alert('Cập nhật thành công');
                        $window.location.reload();
                        $scope.LoadLoaiSP();
                    }
                    else {
                        alert('Có lỗi');

                    }
                });
            }
        }

    };







    $scope.GetSPid = function (item) {
        $scope.btntxt = "Sửa"
        $http({
            method: 'GET',
            url: 'http://localhost:49776/AdminSP/GetSPID/?id=' + item,
        }).then(function (response) {

            $scope.MaSP = response.data.data.MaSP;
            $scope.TenSP = response.data.data.TenSP;
            $scope.Gia = response.data.data.Gia;
            $scope.Anh = response.data.data.Anh;
        });
    };





















    $scope.Update = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:49776/AdminSP/UpdateSP',
        }).then(function (response) {
            if (response.data != "") {
                alert("Data Update Successfully");
                $scope.LoadLoaiSP();
            } else {
                alert("Some error");
            }
        });
    };



   
    $scope.f = function (item) {
        $http({
            method: 'POST',
            url: 'http://localhost:49776/AdminSP/UpdateSP',
        }).then(function (response) {
            response.data.data.Loaisp_id = $scope.Loaisp_id
            response.data.data.sanpham_id = $scope.sanpham_id
            response.data.data.sanpham_name = $scope.sanpham_name
            response.data.data.gia = $scope.gia
            response.data.data.Nhacungcap_id = $scope.Nhacungcap_id
            response.data.data.Soluong = $scope.Soluong
            response.data.data.picture = $scope.picture
        });
    };

});














































