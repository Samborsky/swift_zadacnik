//
//  main.swift
//  Swift_Zadacnik
//
//  Created by Samborsky on 15.04.2022.
//

import Foundation
//MARK: - константы, переменные типы данных
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
//MARK: - строки

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
//MARK: - массивы

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
//MARK: - словари

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
//MARK: - кортежи
//________________________________________________________5.1
let newTuple = (name: "yaroslav", sername: "samborsky", age: 29, married: true)
print(newTuple.sername)
print(newTuple.0)
//________________________________________________________5.2, 5.3
let tupleGAI = (speed: 41, drunk: 91, noDocuments: 55)
print(tupleGAI)
print(tupleGAI.drunk)
print(tupleGAI.2)
//________________________________________________________5.4
let tupleGAI2 = (speed: 61, drunk: 11, noDocuments: 90)
//________________________________________________________5.5
let tupleResult = (tupleGAI.speed - tupleGAI2.speed, tupleGAI.drunk - tupleGAI2.drunk, tupleGAI.noDocuments - tupleGAI2.noDocuments)
print(tupleResult)
//MARK: - циклы
//________________________________________________________6.1
let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for (key, value) in monthDays.enumerated() {
    print("в месяце №\(key + 1) - \(value) дней")
}
//________________________________________________________6.2 через if else
let peopleAge = 44
if peopleAge >= 2 && peopleAge <= 6 {
    print("вы идете в садик")
} else if peopleAge >= 7 && peopleAge <= 18 {
    print("вы идете в школу")
} else if peopleAge >= 19 && peopleAge <= 25 {
    print("вы идете в универ")
} else if peopleAge >= 26 && peopleAge <= 55 {
    print("вы идете на работу")
} else if peopleAge > 56  && peopleAge < 120 {
    print("вы идете на пенсию")
} else {
    print("вы ввели не правильные данные")
}
//________________________________________________________6.2 через switch
switch peopleAge {
case 2...6:
    print("вы идете в садик")
case 7...18:
    print("вы идете в школу")
case 19...25:
    print("вы идете в универ")
case 26...55:
    print("вы идете на работу")
case 56...120:
    print("вы идете на пенсию")
default:
    print("вы ввели не правильные данные")
}
//________________________________________________________6.3 через if else
let studentsMark: UInt = 9
if studentsMark < 5 {
    print("bad")
} else if studentsMark < 8{
    print("good")
} else {
    print("very good")
}
//________________________________________________________6.3 через switch
switch studentsMark {
case 0...5:
    print("bad")
case 6...8:
    print("good")
case 9...12:
    print("very good")
default:
    print("значения не верны")
}
//________________________________________________________6.4
let newArray = Array(0...50)

for _ in newArray {
    for c in 1...20 {
        if c > 15 {
            break
        } else {
            print(c)
        }
    }
    break
}
//MARK: - функции
//________________________________________________________7.1
///сортирует массив интов
func arraySort(array: [Int]) {
    print(array.sorted())
}
///меняем 0-2 эелемент, сортируем по алфавиту
func arraySort2(array: [String]) {
    var newArray = array
    newArray[0] = "zamena"
    newArray[1] = "zamena2"
    newArray[2] = "zamena3"
    print(newArray.sorted())
}
///складывает массивы стринги
func arrayMultyply(arrayOne: [String], arrayTwo: [String]) {
    let result = arrayOne + arrayTwo
    print(result)
}
arrayMultyply(arrayOne: ["hello", "how"], arrayTwo: ["are", "you"])
//________________________________________________________7.2

var journalArray1 = [String]()
func fillJournal(name: String, proffesion: String, grade: Int) {
    journalArray1.append(name)
    journalArray1.append(proffesion)
    journalArray1.append(String(grade))
    for students in journalArray1 {
        print(students)
    }
}
fillJournal(name: "max", proffesion: "driver", grade: 8)
//________________________________________________________7.3
func addArray(name: String, sername: String) {
    var newArrayTwo = [String]()//массив у нас глобальный, его можно вынести за функцию
    newArrayTwo.append(name)
    newArrayTwo.append(sername)
    print(newArrayTwo)
}
addArray(name: "yaroslav", sername: "samborsky")
//________________________________________________________7.4
func ploshad(radius r: Double, konst p:Double = 3.14) {
    print("Площадь круга равна \((r*r) * p)")
}
//________________________________________________________7.5
var studentsDictionary = ["name": ("max", "bob", "john"), "score": ("5", "10", "12")]
print(studentsDictionary["name"] ?? "")
//________________________________________________________7.1.1
func sumArray(arrayOne: [String], arrayTwo: [String], arrayThree: [String]) {
let summaryArray = arrayOne + arrayTwo + arrayThree
    var arrayInt = [Int]()
    for i in summaryArray {
let b = Int(i) ?? 0
        arrayInt.append(b)
    }
   print(arrayInt.reduce(0, +))//складываем все элементы массива
}
sumArray(arrayOne: ["1", "2"], arrayTwo: ["3", "4"], arrayThree: ["5", "6"])
//________________________________________________________7.1.2
//MARK: - замыкания
//________________________________________________________8.1
//замыкания это анонимные функции, которые можно передать в качестве аргумента в другие функции
//нужны они для упрощения кода
//________________________________________________________8.2
var testArray = [1,6,3,8,9,3,44,7,11]
print(testArray.sorted(by: {$0 < $1}))
print(testArray.sorted(by: >))
print(testArray.sorted(by: { (num1: Int, num2: Int) in num1 < num2 }))
print(testArray.sorted(by: {(num1, num2) in num1 < num2 }))
print(testArray.sorted(by: {(num1: Int, num2: Int) -> Bool in num1 < num2}))
//________________________________________________________8.3
var newArrayThree = [Int]()
func arrayEmpty(array: [Int]) {
   var newArray = array
    if newArray.isEmpty {
        newArray.append(5)
        print(newArray)
    } else {
        print("массив полный")
    }
}
arrayEmpty(array: newArrayThree)
//________________________________________________________8.4
func site(name: String, sername: String, nicname: String, email: String, password: String) {
print(name, sername, nicname, email, password)
}
//________________________________________________________8.5
var newDictOne = [String: Int]()
var newArrayFour = [5]
func checking(dict: [String: Int], array: [Int]) {
    if newDictOne.isEmpty {
        newDictOne.updateValue(4, forKey: "hello")
    } else {
        print("словарь полный")
    }
    if newArrayFour.isEmpty {
        newArrayFour.append(99)
    } else {
        print("массив полный")
    }
    print("\(newDictOne) \(newArrayFour)")
}
checking(dict: newDictOne, array: newArrayFour)
//MARK: - перечисления
//________________________________________________________9.1
//перечисления нужны для обезопасывания кода, с их помощью пожно описывать классы, структуры
//________________________________________________________9.2
enum People {
    case fat
    case skinny
}

enum Color {
    case black
    case white
    case blue
    case green
}

enum Weather {
    case rain, sun, cloud, snow
}

enum Compas {
    case south
    case west
    case north
    case east

    var name: String {
        switch self {
        case .south:
            return "юг"
        case .west:
            return "запад"
        case .north:
            return "север"
        case .east:
            return "восток"
        }
    }
}

enum Cat: String {
    case british = "британская"
    case russian = "русская"
}

let sideOfCompas = Compas.south
print(sideOfCompas.name)

let Colorss = Color.black

switch Colorss {
case .black:
    print("черный")
case .blue:
    print("синий")
case .green:
    print("зеленый")
case .white:
    print("белый")
}
//________________________________________________________9.3
enum Resume {
    case name
    case sername
    case age
    case profession
    case hobby
}
let yaroslavSamborsky = Resume.age
if yaroslavSamborsky == .sername {
    print("Самборский")
} else if yaroslavSamborsky == .age {
    print(29)
} else if yaroslavSamborsky == .name {
    print("Ярослав")
} else if yaroslavSamborsky == .hobby {
    print("игры")
} else if yaroslavSamborsky == .profession {
    print("программист")
}
print("----------switch---------")
switch yaroslavSamborsky {
case .age:
    print(29)
case .profession:
    print("программист")
case .hobby:
    print("игры")
case .sername:
    print("Самборский")
case .name:
    print("Ярослав")
}
//________________________________________________________9.4
enum DeviceColors {
    case red
    case blue
    case green
    case white
    case black
}
enum Device {
    case iphone
    case watch
    case notebook
    case ipad
}

func appleDevices(device: Device, color: DeviceColors) {
    print("ваш \(device) теперь \(color) цвета")
}
appleDevices(device: .notebook, color: .red)
//MARK: - классы и структуры
//________________________________________________________10.1
class PeopleOne {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
class Son: PeopleOne {
}
let alexSon = Son(name: "Alex", age: 6)

class Country {
    var name: String
    var capital: String
    var population: Int
    var populationTo2050: Double {
        return (Double(population) * 1.38).rounded()
    }
    init(name: String, capital: String, population: Int) {
        self.name = name
        self.capital = capital
        self.population = population
    }
}
let newCountry = Country(name: "Canada", capital: "Ottawa", population: 54334595)
print(newCountry.populationTo2050)
//________________________________________________________10.2
class House {
    var width: Int
    var height: Int
    var getWidth: Int {
        return build()
    }
    init(width: Int, height: Int) {
        self.height = height
        self.width = width
    }
    ///умножение ширины на высоту
    func build() -> Int {
       return width * height
    }
}
let house = House(width: 50, height: 4)
print(house.build())
print(house.getWidth)
//________________________________________________________10.3
class Names {
    var names: [String] = []
    var funcNames = ["albert", "max", "yaroslav", "yakov", "alex", "bob", "boris"]
    init(names: [String]) {
        self.names = names
    }
///выводит имена которые начинаются на букву " " в уже готовом массиве
    func findNameByCharacter(type character: String) -> [String] {

var newArray = [String]()
        for name in funcNames {

            if name.hasPrefix(character) {
                newArray.append(name)
            }
        }
        return newArray.sorted(by: {$0 > $1})
    }
    ///вторая часть задания с методом
    func findNamesArray(names: [String] , letter: String) {
        for i in names {
            //создаем новый массив для тех имен которые попадают под условие
            var newArray = [String]()
            //проверка условия, если слово начинается на букву letter
            if i.hasPrefix(letter) {
                newArray.append(i)
            }
            //еще одие цикл, чтобы извлечь имена из массива и вывести с новой строки
            for i in newArray {
                print(i)
            }
        }
    }
}
let names = Names(names: ["maria", "oleg", "yaroslav", "marta"])
print(names.findNameByCharacter(type: "y"))
//я не стал заморачиваться будет введена маленькая или большая буква, возможно стоит переписать
names.findNamesArray(names: ["oleg", "maria", "masha", "yaroslav"], letter: "m")
//________________________________________________________10.4
class Students {
    var name = ["василий", "иван", "федя", "маша", "паша", "саша", "ярослав", "альберт", "боб", "иван", "петя", "игорь", "олеся", "влада", "маша", "алина", "артем", "игнат", "софия", "злата", "марина", "джон", "паша", "валя", "артем", "ярослав", "света", "алина", "алена", "катя", "оксана", "лена", "юля", "дима", "олег", "саша", "петя", "иван", "борис", "игнат", "олег"]

    ///подсчет учеников и их сортировка
    func countAndSort() {
        print("ученики теперь отсортированы по алфавиту")
        print(name.sorted())
        if name.count > 30 {
            print("в школе нет мест, в классе и так \(name.count) учеников")
        } else {
            print("всего в классе \(name.count) учеников")
        }
    }
}
let students = Students()
students.countAndSort()
//________________________________________________________10.5
struct Car {
    enum Engine {
        case on
        case off
    }
    enum FuelType {
        case gas
        case benzin
        case diesel
    }
    var engine: Engine
    var fuel: FuelType
    var mark: String
    var model: String
}
let car1 = Car(engine: .off, fuel: .benzin, mark: "Ford", model: "Focus")

struct PeopleTwo {
    var name: String
    var age: Int
    var gender: Gender = .female

    enum Gender {
        case male
        case female
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init(name: String, age: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.gender = gender
    }
}
let peopleThree = PeopleTwo(name: "Maria", age: 30, gender: .female)
let peopleFour = PeopleTwo(name: "bob", age: 34)
//________________________________________________________10.6
enum Buy {
    case yes
    case no
    var name: String {
        switch self {
        case .yes:
            return "куплено"
        case .no:
            return "не куплено"
        }
    }
}

struct ProductsList {
    var products = [String]()
///добавление товаров в список
   mutating func addToShopingList(product: String) {
       products.append(product)
    }
    ///проверка куплен товар или нет
    func checkShoppingList(productOne: String) {
        for product in products {
            if product == productOne {
                print("\(product) уже \(Buy.yes.name)")
            } else {
                print("\(product) еще \(Buy.no.name)")
            }
        }
    }
}
var shopList = ProductsList()
shopList.addToShopingList(product: "bananas")
shopList.addToShopingList(product: "cocumber")
shopList.addToShopingList(product: "coconut")
shopList.addToShopingList(product: "juice")
print(shopList.products)

shopList.checkShoppingList(productOne: "juice")
//MARK: - свойства экземпляра
//________________________________________________________11.1


