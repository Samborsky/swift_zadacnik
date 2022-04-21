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
class CarOne {

    enum Engine {
        case on
        case off
    }

    enum Condition {
        case new
        case old
    }

    enum AirCondition {
        case yes
        case no
    }

    var engine: Engine = .off
    var condinion: Condition = .new
    var dealerPrice: Int
    var ac: AirCondition
    ///цена в зависимости от значения переменной "ac"
    var priceWithOptions: Double {
        get {
            var newPrice = Double(dealerPrice)
            if ac == .yes {
                newPrice = Double(dealerPrice) * 1.1
            }
            return newPrice
        }
    }
    init(dealerPrice: Int, ac: AirCondition) {
        self.dealerPrice = dealerPrice
        self.ac = ac
    }
}

let newCar = CarOne(dealerPrice: 1000, ac: .no)
print(newCar.priceWithOptions)

class Triangle {
    var sideA: Double
    var sideB: Double
    var sideC: Double
    var perimetr: Double {
        return sideA + sideB + sideC
    }
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
}

let triangle = Triangle(sideA: 5, sideB: 6, sideC: 7)
print(triangle.perimetr)

class PeopleFour {
    var name: String
    var nickName: String {
        didSet {
            print("старая кличка \(oldValue) не актуальна, буду теперь называться \(nickName)")
        }
    }
    var age: Int
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}
let peopleFive = PeopleFour(name: "yaroslav", age: 29, nickName: "Space")
print(peopleFive.nickName)
peopleFive.nickName = "Brave"

class PeopleSix: PeopleFour {
    var pet: Bool
    var weight: Double
    init(pet: Bool, weight: Double) {
        self.pet = pet
        self.weight = weight
        super.init(name: "", age: 0, nickName: "")
    }
    convenience init(pet: Bool) {
        self.init(pet: pet, weight: 15.4)

    }
}
let peopleSix = PeopleSix(pet: true)


struct CarTwo {
    var mark: String
    var turbine = true
}
var carTwo = CarTwo(mark: "ford")

class PeopleEight {
    var name: String
    var age: Int
    var getOlder: Int {
        get {
            return age + 1
        }
        set {
            print("ты поменял свйо возраст, тебе теперь \(newValue)")
        }
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let peopleEight = PeopleEight(name: "Mark", age: 50)
print(peopleEight.age)
print(peopleEight.getOlder)
peopleEight.getOlder = 60
//-----------------------------------------------------------------------------------пример из ютуба с lazy
struct Calculator {
    static func calculateGamesPlayed() -> Int {
        var games = [Int]()
        for i in 1...4000 {
            games.append(i)
        }
        return games.last ?? 0
    }
}

struct Player {
    var name: String
    var team: String
    var position: String
    lazy var gamesPlayed = {
        Calculator.calculateGamesPlayed()
    } ()

    lazy var introduction = {
        return "Now entering the game: \(name), \(position) for the \(team)"
    }()
}

var jordan = Player(name: "Michael Jordan", team: "Bulls", position: "Shooting Guard")
//jordan.gamesPlayed

struct Player2 {
    var name: String
    var team: String
    var position: String
    lazy var gamesPlayed = {
        Calculator.calculateGamesPlayed()
    } ()
    lazy var introduction = {
        return "Now entering the game: \(name), \(position) for the \(team)"
    }()
}

var jordan2 = Player2(name: "Michael Jordan", team: "Bulls", position: "Shooting Guard")
//-----------------------------------------------------------------------------------еще один пример из ютуба с lazy
class DataProvider {
    var data: String
    init() {
        //sleep позволяет отложить выполнение кода на n секунд
        sleep(0)
        data = "Ленивое вычисление"
    }
}

class Client {
    //благодаря тому, что dataProvider имеет свойство lazy, сначала сработает print("1") и print("2") и только потом будет выполнен остальной код
    lazy var dataProvider = DataProvider()
}
print("1")
//если бы dataProvider был не lazy, то мы бы сначала получили print("1") и ждали
var client = Client()
print("2")
print(client.dataProvider.data)
print("3")

hello: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        if product == 50 {
            break hello
        }
        print("\(i) * \(j) is the product of \(product)")
    }
}
//________________________________________________________11.2

class CalculatorNew {
    var numberOne: Double
    var numberTwo: Double
    var addition: Double {
        return numberOne + numberTwo
    }
    var subtraction: Double {
        return numberOne - numberTwo
    }
    var devide: Double {
        return numberOne / numberTwo
    }
    var multiply: Double {
        return numberOne * numberTwo
    }

    init(numberOne: Double, numberTwo: Double) {
        self.numberOne = numberOne
        self.numberTwo = numberTwo
    }
}
let calculator = CalculatorNew(numberOne: 40, numberTwo: 90)
print(calculator.addition)
print(calculator.subtraction)
print(calculator.devide)
print(calculator.multiply)
//________________________________________________________11.3, 11.4, 11.5
enum AppCategory {

    enum Programs {
        case business
        case food
        case health
        case maps
        case music
        case education

        var name: String {
            switch self {
            case .business:
                return "бизнес"
            case .food:
                return "еда"
            case .health:
                return "здоровье"
            case .maps:
                return "карты и навигация"
            case .music:
                return "музыка"
            case .education:
                return "образование"
            }
        }
    }
}

class AppStore {

    ///имя приложения
   private let appName: String
    ///категория приложения
   private let programCategory: AppCategory.Programs
    ///суммарное число рейтинга для подсчета среднего
    private var summaryRating: Double = 0
    ///количество отзывов
    private var ratingCount: Double = 0

    var appInformation: String {
        return "приложение называется \(appName) и находится в категории \(programCategory.name)"
    }

///рейтинг приложения
    var rating: Double {
       return summaryRating / ratingCount
    }
    ///словарь с отзывами к приложению
    private var reviewAppOne = [String: String]()

    init(appName: String, programCategory: AppCategory.Programs) {
        self.appName = appName
        self.programCategory = programCategory
    }


    ///добавление отзыва к приложению
    func addReview(name: String, review: String, rate ourApp: Int) {

        reviewAppOne.updateValue(review, forKey: name.capitalized)

        if ourApp < 1 || ourApp > 5 {
            print("введите оценку от 1 до 5 баллов")
        } else {
            summaryRating += Double(ourApp)
            ratingCount += 1
        }
    }
///отзывы пользователей
    func showReview() {
        for (key, value) in reviewAppOne {
            print("пользователь \(key) пишет: \(value)")
        }
    }
}
///создаем экземпляр класса (наше приложение)
let newAppOne = AppStore(appName: "calculator", programCategory: .business)
newAppOne.addReview(name: "маша", review: "нормально приложение", rate: 4)
newAppOne.addReview(name: "петя", review: "приложение не очень понравилось, хотелось бы инженерные функции", rate: 2)
newAppOne.addReview(name: "осел", review: "я дурачок, ахаха", rate: 1)
newAppOne.addReview(name: "ярослав", review: "отличное приложение, разработчик огонь!", rate: 5)
print(newAppOne.appInformation)
print(newAppOne.rating)
newAppOne.showReview()

//________________________________________________________11.6 СДЕЛАТЬ! пока не знаю как, возможно через deinit()

//________________________________________________________11.7 сделать!
//________________________________________________________11.8 сделать

//________________________________________________________12.1
//глобальные переменные ожно использовать во всем коде, вызывать где угодно
//локальные переменные имеют ограниченую область видимости, вызывать их можно только внутри {} где они были объявлены
//свойства типа - принадлежат самому типу, а не экземплярам этого типа. будет всегда только дна копия этих свйоств независимо от количества экземпляров. свойства типа помечаются ключевым словом static

//свойства экземпляров - свойства которые принадлежат экземпляру конкретного типа, каждый новый экземпляр этого типа
//имеет свои собственные свйоства экземпляра отдельные от другого экземпляра

//________________________________________________________12.2 возможно я не понял и не так сделал

class ClassOne {
    var someArray = [1,5,7,1,9,10,400,300,500,1000,17,66,43,99]
    func sotrting() {
        print(someArray.sorted {$0 > $1})

    }
}
let classOneCopy = ClassOne()
classOneCopy.sotrting()

class ClassTwo  {
    var someArray = [1,5,7,1,9,10,400,300,500,1000,17,66,43,99]
    func sotrting() {
        print(someArray.sorted {$0 < $1})

    }
}
let classTwoCopy = ClassTwo()
classTwoCopy.sotrting()
//________________________________________________________12.3

var someArrayTwo = [5,8,3,99,33,55,12,543,91]

class GeneralDirector {
    ///свойство типа
    static var maxSalery: Int = 500_000

    var name: String
    var age: Int
    var companyName: String
    var salery: Int {
        didSet {

            if salery > GeneralDirector.maxSalery {
                salery = GeneralDirector.maxSalery
                print("много хочешь, твой потолок \(GeneralDirector.maxSalery)")
            }
            print("раньше зарплата была \(oldValue), а будет теперь \(salery)")
        }
    }

    init(name: String, age: Int, companyName: String, salery: Int) {
        self.name = name
        self.age = age
        self.companyName = companyName
        self.salery = salery
    }
}



class GeneralSeller: GeneralDirector {
    var salesCount: Int
    var car: String

    init(salesCount: Int, car: String) {
        self.salesCount = salesCount
        self.car = car
        super.init(name: "Mark", age: 30, companyName: "Avon", salery: 200_000)
    }
}

class Buhgalter: GeneralDirector {
    func sumArray(array: [Int]) {
        print(array.reduce(0, +))
    }
}



//generalDirector.salery = 200_000
//generalDirector.salery = 400000
//generalDirector.salery = 600000

let generalDirector = GeneralDirector(name: "Bob", age: 38, companyName: "Avon", salery: 300_000)

let generalSeller = GeneralSeller(salesCount: 5, car: "Volvo")

let buhgalter = Buhgalter(name: "Marina", age: 45, companyName: "Avon", salery: 120_000)
buhgalter.sumArray(array: someArrayTwo)
//________________________________________________________12.4
