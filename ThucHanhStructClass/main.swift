//
//  main.swift
//  ThucHanhStructClass
//
//  Created by Trần Văn Cam on 01/10/2022.
//

import Foundation

// Nhập vào 1 mảng sinh viên
// 1. In ra danh sách sinh viên
// 2. In ra sinh viên điểm TB > 8
// 3. Tìm sinh viên theo mã sv
// 4. Sắp xếp danh sách sv theo điểm TB tăng dần

//print("Nhập số sinh viên: ")
//let n = Int(readLine() ?? "") ?? 0
//
//// Tạo mảng chứa n sinh viên
//
//var arrSinhVien: [SinhVien] = []
//
//for i in 0..<n {
//    print("Nhập sinh viên thứ \(i+1)")
//    print("Nhập mã sinh viên:")
//    let maSV = readLine() ?? ""
//    print("Nhập tên sinh viên:")
//    let tenSV = readLine() ?? ""
//    print("Nhập điểm Toán:")
//    let toan = Float(readLine() ?? "") ?? 0
//    print("Nhập điểm Lý:")
//    let ly = Float(readLine() ?? "") ?? 0
//    print("Nhập điểm Hoá:")
//    let hoa = Float(readLine() ?? "") ?? 0
//
//    let newSV = SinhVien(maSV: maSV, tenSV: tenSV, diemToan: toan, diemLy: ly, diemHoa: hoa)
//    arrSinhVien.append(newSV)
//}
//
//print(arrSinhVien)
//
//// In ra danh sách tên sinh viên và điểm TB sinh viên
//
//for sv in arrSinhVien {
//    print(sv.tenSV, "Có điểm trung bình", sv.diemTB)
//}

// Tạo 1 mảng các sinh viên sẵn
var arraySV: [SinhVien] = [
    SinhVien(maSV: "83459", tenSV: "Nam", diemToan: 9, diemLy: 10, diemHoa: 8),
    SinhVien(maSV: "345", tenSV: "Vu", diemToan: 9, diemLy: 7, diemHoa: 8),
    SinhVien(maSV: "364543", tenSV: "Hong", diemToan: 8, diemLy: 7.5, diemHoa: 7),
    SinhVien(maSV: "634", tenSV: "Linh", diemToan: 9, diemLy: 5.5, diemHoa: 9),
    SinhVien(maSV: "73", tenSV: "Toan", diemToan: 8, diemLy: 7, diemHoa: 7.5),
    SinhVien(maSV: "856", tenSV: "Binh", diemToan: 9, diemLy: 8, diemHoa: 8.5),
]

// in ra danh sách
for sv in arraySV {
    print(sv.tenSV, "có điểm TB là", sv.diemTB)
}

// In ra những sv có điểm TB lớn hơn 8
for sv in arraySV {
    if sv.diemTB > 8 {
        print("\(sv.tenSV) có điểm TB lớn hơn 8: \(sv.diemTB)")
    }
}

// Tìm sinh viên theo mã sinh viên
print("Sinh viên có mã 01 là: ")
for sv in arraySV {
    if sv.maSV.contains("01") {
        print(sv.tenSV, sv.maSV)
        break
    }
}

// Sắp xếp sinh viên theo điểm trung bình tăng dần
let sortArr = arraySV.sorted { svTruoc, svSau in
    // Điều kiện để sắp xếp
    svTruoc.diemTB < svSau.diemTB
}
print("Sắp xếp tăng dần điểm TB")
arraySV.forEach { sv in
    print(sv.tenSV, sv.diemTB)
}

// Sửa thôn gitn của sv có mã 02
for index in 0..<arraySV.count {
    if arraySV[index].maSV.contains("02") {
        arraySV[index].tenSV = "Hoang Van A"
        arraySV[index].saveDiemToan(newToan: 10)
        break
    }
}
print("Sau khi thay đổi:")
arraySV.forEach { sv in
    print(sv.tenSV, sv.diemToan, sv.diemTB)
}

print("new code")
