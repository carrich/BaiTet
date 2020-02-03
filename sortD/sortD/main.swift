//
//  main.swift
//  sortD
//
//  Created by Ngoduc on 1/27/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import Foundation
//1.Sắp xếp mảng giảm dần sử dụng hàm sort()
func sortDecreate(){
    var mang: [Int] = [1,4,2,5]
    mang.sort(by: >)
    print(mang)
}
//2.In hình (nhập vào chiều cao của hình, với hình 2 thì chiều cao phải lẻ):
func tamGiacCan(){
    print("Nhập vào chiều cao của tam giác, (chiều cao lớn hơn 1): ")
    let h = Int(readLine()!)!
    
    for i in 0..<h{
        for j in 0..<2*h-1{
            if j >= (h-1-i) && j <= (h-1+i){
                print("*", terminator: " ")
            }else{
                print("-", terminator: " ")
            }
        }
        print()
    }
    for t in 1..<h{
        for j in 0..<2*h-1{
             if j >= t && j <= (2*h-2-t){
                print("*", terminator: " ")
            }else{
                print("-", terminator: " ")
            }
        }
        print()
    }
}
//3.Viết chương trình nhập ngày, tháng, năm. – Tháng đó có bao nhiêu ngày – Tìm ngày trước ngày vừa nhập. – Tìm ngày sau ngày vừa nhập
var month_table: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
var month_table_nhuan: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]
func isNamNhuan(_ year: Int) -> Bool {
    if year%4 == 0 && year%100 != 0 || year%400 == 0{
        return true
    }else{
        return false
    }
}
func getTotalDayinMonth(Month: Int, Year: Int) -> Int {
    return isNamNhuan(Year) ? month_table[Month - 1] : month_table_nhuan [Month - 1]
}
func valiDate(Day: Int,Month: Int,Year: Int) -> Bool {
    if (Year < 1 || Year > 9999 || Month < 1 || Month > 12 || Day < 1 || Day > 31) {
        return false
    }
    if (Day > getTotalDayinMonth(Month: Month, Year: Year)) {
        return false
    }
    return true
}
func findPreDate(day: Int, mouth: Int, year: Int){
    var day1 = day - 1
    var mouth1 = mouth
    var year1 = year
    if day1 < 1 {
         mouth1 -= 1
        if mouth1 < 1 {
            year1 -= 1
        }
    }
    
}
func findNextDate(day: Int, mouth: Int, year: Int){
    var day1 = day + 1
    var mouth1 = mouth
    var year1 = year
    if day1 > getTotalDayinMonth(Month: mouth, Year: year)  {
         mouth1 += 1
        if mouth1 > 12 {
            year1 += 1
        }
    }
    
}
//4.Tìm số Amstrong
func CountDigit(So: Int) -> Int{
    var count: Int = 0
    var So1 = So
    while So > 0 {
        So1 = So1/10
        count += 1
    }
    return count
}
func isAmstron(So: Int) -> Bool{
    let numDigit = CountDigit(So: So)
    var sum: Double = 0
    var tmp = So
    var last: Double
    while (tmp > 0) {
        last = Double(tmp % 10)
        tmp /= 10
        sum += pow(last, Double(numDigit))
    }
    if sum == Double(So) {
        return true
    }
    return false
}
func findAmstron(){
    for so in 1..<1000 {
        if isAmstron(So: so) {
            print(so)
        }
    }
}
func isNumNguyenTo(so: Int) -> Bool{
    if so <= 1 {
        return false
    }
    for i in 2..<so/2 {
        if (so % i == 0) {
            return false
        }
    }
    return true
}
//5.Đếm số nguyên tố trong đoạn [a, b]
func countSoNguyento(x: Int, y: Int){
    var count: Int = 0
    for i in x..<y+1 {
        if isNumNguyenTo(so: i) {
            count += 1
        }
    }
    print(count)
}
//6.Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
func insertMangIncreate(so: Int){
    var mang: [Int] = [1,4,2,5]
    mang.sort(by: <)
    var i:Int = 0
    while mang[i] < so {
        i += 1
    }
    mang.insert(so, at: i)
    print(mang)
}
//7.in dãy số Finonaxi từ 0 đến n
func indayFibonacci(n: Int){
    var n1 = 0, n2 = 1
    var n3: Int
    if n > 0 {
        n3 = n1 + n2
        n1 = n2
        n2 = n3
        print(n3, terminator: " ")
        indayFibonacci(n: n-1)
    }
}
func printArrayFibo(n: Int){
    print("0 1", terminator: " ")
    indayFibonacci(n: n-2)
}
func findC(k: Int, n: Int) -> Int{
    if (k == 0 || k == n) {
        return 1
    }
    if k == 1 {
        return n
    }
    return findC(k: k-1, n: n-1) + findC(k: k, n: n-1)
}
//8.In tam giác Pascal
func inTamgiacPascal(n: Int){
    for i in 0..<n {
        for j in 0..<i+1 {
            print(findC(k: j, n: i), terminator: " ")
        }
        print(" ")
    }
}
//9.Đổi kí tự đầu tiên của mỗi từ thành chữ in hoa
func convertToHoa(s: String){
    var s1 = s
    print(s[s.startIndex].uppercased())
    let kitu: String = s[s.startIndex].uppercased()
    s1.remove(at: s.startIndex)
    s1.insert(Character(kitu), at: s.startIndex)
    print(s1)
}
//10.Kiểm tra tính đối xứng của 1 chuỗi
func isDoixung(s: String) -> Bool{
    let char = Array(s)
    var r = true
    for i in 0..<s.count {
        if char[i] != char[s.count - 1 - i]  {
            r = false
            break
        }
    }
    return r
}
func isSoCP(so: Int)-> Bool{
    var i = 0
    while (i*i <= so) {
        if i*i == so {
            return true
        }
        i += 1
    }
    return false
}
func isChan(so: Int) -> Bool{
    if so % 2 == 0 {
        return true
    }
    return false
}
func isChuSole(So: Int) -> Bool{
    var kt: Int = 0
    var tmp = So
    var last: Int
    while (tmp > 0) {
        last = tmp % 10
        tmp /= 10
        if isChan(so: last) {
             kt += 1
        }
       
    }
    if kt != 0 {
        return false
        
    }
    return true
   
}
//11,12 Tìm phần tử xuất hiện nhiều nhất trong mảng số nguyên
func nhapMang(n: Int){
    var digits: [Int] = []
    var mangdem: [Int] = []
    for i in 0..<n {
        print("nhập phần tử thứ \(i)")
        digits.insert(Int(readLine()!)!, at: i)
    }
    print(digits)
    for i in 0..<digits.count {
        mangdem.insert(0, at: i)
        var sophantu = digits.count
        for j in 0..<sophantu {
            if digits[i] == digits[j] {
                mangdem[i] += 1
            }
        }
    }
    var max = 0, vitri = 0
    for l in 0..<digits.count {
        if mangdem[l] > max {
            max = mangdem[l]
            vitri = l
        }
    }
    print("phan tu thu \(vitri+1) voi so lan suat hien nhieu nhat \(max)")
}
//13.Tìm số chính phương đầu tiên trong mảng số nguyên
func findSCP(n: Int){
var digits: [Int] = []
var mangdem: [Int] = []
for i in 0..<n {
    print("nhập phần tử thứ \(i)")
    digits.insert(Int(readLine()!)!, at: i)
}
print(digits)
    for item in digits {
        if isSoCP(so: item) {
            print(item)
             break
        }
    }
}
//14.Tìm phần tử có giá trị lớn nhất và có chứa toàn chữ số lẻ trong mảng số nguyên
func findMaxLe(n: Int){
    var digits: [Int] = []
    var mangLe: [Int] = []
    for i in 0..<n {
        print("nhập phần tử thứ \(i)")
        digits.insert(Int(readLine()!)!, at: i)
    }
    print(digits)
    for i in 0..<digits.count {
        var i = 0
        if isChuSole(So: digits[i]) {
            mangLe.insert(digits[i], at: i)
            i += 1
        }
    }
    var max = 0, vitri = 0
    print(mangLe)
    for l in 0..<mangLe.count {
        if mangLe[l] > max {
            max = mangLe[l]
        }
    }
    print("phan tu lon nhat \(max)")
}
//15.Chuyển đổi từ số la mã sang số thập phân
func lammaToThapphan(so: String){
    var a: [Int] = []
    let so1 = Array(so)
    
    for i in 0..<so.count {
        switch so1[i] {
        case "I":
            a.insert(1, at: i)
        case "V":
            a.insert(5, at: i)
        case "X":
        a.insert(10, at: i)
        case "L":
        a.insert(50, at: i)
        case "C":
        a.insert(100, at: i)
        case "D":
        a.insert(500, at: i)
        case "M":
              a.insert(1000, at: i)
        default:
            break
        }
    }
    var k: Int = a[so.count - 1]
    var d = so.count - 1
    print(d)
    print(a[d - 1])
    while d > 0 {
        if (a[d] > a[d - 1]) {
            k = k - a[d - 1]
        } else if (a[d] == a[d - 1] || a[d] < a[d-1]){
            k = k + a[d - 1]
        }
        d -= 1
    }
    print(k)
    
}

lammaToThapphan(so: "VIM")
