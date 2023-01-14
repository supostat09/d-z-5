
//1)Создать пустой словарь товары. Ключ - название, цена - значение. Добавить 3 товара по очереди. Посчитать сумму зa все товары.

//2)Создать словарь из 10 товаров. Составить программу, где ридлайн вызывается 3 раза и запрашивает название товара. Ввести название товаров и вывести информацию в виде чека:

import Foundation

//Задание 1

var basket: [String: Int] = [:]

basket.updateValue(40, forKey:"milk")

basket.updateValue(30, forKey:"kola")

basket.updateValue(20, forKey:"bread")

print(basket)

var values = Array(basket.values)

print(values)

var result: Int = 0

for number in values {
    result += number
}

print(result)

//Задание 2

var products: [String: Int] = ["coca cola": 30, "bread": 20, "milk": 40, "kefir": 35, "pasta": 45, "butter": 80, "potatoes": 25, "eggs": 60, "cake": 200, "sausage": 150]

print(products)

var totalSum = 0

func productPrice (products: String) {
    switch products {
    case "coca cola":
        print("кока кола - \(30) сом")
        totalSum += 30
    case "bread":
        print("хлеб - \(20) сом")
        totalSum += 20
    case "milk":
        print("молоко - \(40) сом")
        totalSum += 40
    case "kefir":
        print("кефир - \(35) сом")
        totalSum += 35
    case "pasta":
        print("макароны - \(45) сом")
        totalSum += 45
    case "butter":
        print("масло - \(80) сом")
        totalSum += 80
    case "potatoes":
        print("картошка - \(25) сом")
        totalSum += 25
    case "eggs":
        print("яйца - \(60) сом")
        totalSum += 60
    case "cake":
        print("торт - \(200) сом")
        totalSum += 200
    case "sausage":
        print("калбаса - \(150) сом")
        totalSum += 150
    default:
        print("Данного товара нет")
    }
}

print("Введите товар")

let productOne = readLine()!
productPrice(products: productOne)

let productTwo = readLine()!
productPrice(products: productTwo)

let productThree = readLine()!
productPrice(products: productThree)

print("Итого - \(totalSum)")
