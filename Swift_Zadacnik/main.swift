//
//  main.swift
//  Swift_Zadacnik
//
//  Created by Samborsky on 15.04.2022.
//

import Foundation

//________________________________________________________1.1
let a = -15
let b = "hello"
let c = 15.5
let d: UInt = 15
let e: Float = 4.3
let cc = Int.max
let bb = Int.min
let aa = UInt.max
let dd = UInt.min
//_________________________________________________________1.2
typealias maxValue = Int
typealias product1 = String
let tovar1:product1 //product1 == String
let product:maxValue // maxVaue == Int
tovar1 = "Чипсы"
product = 55
//________________________________________________________1.3
let number1 = "543234"
let number2 = Int(number1)
let word1 = 345345.1224
let word2 = String(word1)
//________________________________________________________1.4
let numberA = 10
let numberB = 10
let numberResult = numberA + numberB
print("\(numberA) + \(numberB) = \(numberResult)")
//________________________________________________________2.1
let fio = "самборский ярослав витальевич"
let age = 29
let city = "rostov"
let hobby = "gaming, tv"
//________________________________________________________2.2
print("меня зовут \(fio), мне \(age) лет, живу я в \(city), мое увлечение \(hobby)")
//________________________________________________________2.3
print("меня зовут \(fio)\nмне \(age) лет, живу я\nв \(city), мое увлечение \(hobby)")
//________________________________________________________2.4
for myFIO in fio {
    print(myFIO)
}
//________________________________________________________2.5
let chislo1 = 15
let chislo2 = "15"
let chislo3 = String(chislo1) + " " + chislo2
print(chislo3)
//_______________________________________________________3.1
var studentsArray = ["витя", "коля", "илья", "ярослав", "олег", "валера", "игорь", "дима", "леша", "федор", "женя", "костя"]
//_______________________________________________________3.2
studentsArray.append("маша")
studentsArray.append("влада")
studentsArray.insert("оля", at: 4)
studentsArray.insert("лена", at: 0)
studentsArray.append("валя")
studentsArray.insert("алина", at: 9)
//_______________________________________________________3.3
studentsArray.removeSubrange(1...7)//удаление диапозоном
//________________________________________________________3.4
var gradeArray = [0,1,2,3,4,5]
let gradeArray2 = [6,7,8,9,10]
gradeArray += gradeArray2//сложил массивы
//________________________________________________________3.5
var studentsGrade = ("\(studentsArray[0]) - \(gradeArray[0]) баллов")
print(studentsGrade)
//________________________________________________________3.5 еще один вариант
var sss = [studentsArray[0]:gradeArray[0],studentsArray[1]:gradeArray[1],studentsArray[2]:gradeArray[2],studentsArray[3]:gradeArray[3],studentsArray[4]:gradeArray[4], studentsArray[5]:gradeArray[5]]
for (key, value) in sss {
    print("\(key) - \(value) баллов, молодец!")
}
//________________________________________________________3.6
let money = [1,5,34,756,443,9,12]
let sum = money.reduce(0, +)
//________________________________________________________4.1
var dict1: [String:Int] = ["hello":14]
var dict2: [Int:String] = [1:"январь", 2:"февраль", 3:"март", 4:"апрель"]
var dict3 = [1:"february", 2:"january", 3:"mart"]
//________________________________________________________4.2
print(dict1.keys, dict1.values, dict2.keys, dict2.values, dict3.keys, dict3.values)
//________________________________________________________4.3
var dict4: [Int:String] = [:]
if dict4.isEmpty {
    dict4.updateValue("hello", forKey: 12)
} else {
    print("словарь не пустой")
}
//________________________________________________________4.4
var dict5 = ["иномарка":"волво"]
//________________________________________________________4.5
dict5.updateValue("жига", forKey: "отечественная")
dict5.updateValue("мазда", forKey: "инормарка1")

print(dict5, dict5.values)
dict5.removeValue(forKey: "иномарка")
dict5["инормарка1"] = nil
//________________________________________________________5.1



