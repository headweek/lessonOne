//
//  main.swift
//  lesson One
//
//  Created by Salman Abdullayev on 20.09.23.
//

import Foundation

// ZADANIYE ONE

var mass: [Int] = [1, 2, 3, 4]

func vichisl(){
    for i in mass {
        if i % 2 == 0{
            print("\(i) - chotnoye chislo")
        }else{
            print("\(i) - nechetnoye chislo")
        }
    }
}

vichisl()

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
var newMass: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func deleniyaNaTri () {
    for i in newMass {
        if i % 3 == 0 {
            print("\(i) eto chislo delitsa na 3 bez ostatka")
        }else{
            print("\(i) eto chisle ne delitsa na 3 bez ostatka")
        }
    }
}

deleniyaNaTri()

//3. Создать возрастающий массив из 100 чисел.

var chisla = 1...100
var vozrMass = Array(chisla)
var vozrMass2: [Int] = []

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

func udaleniye () {
    for i in vozrMass{
        if i % 3 == 0 && i % 2 != 0{
            print(" \(i)")
        }else{
            
        }
    }
}

udaleniye()

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func generateFibonacciNumbers(count: Int) -> [Int] {
    var fibonacciNumbers = [0, 1] // Начнем с первых двух чисел Фибоначчи
    
    // Генерация чисел Фибоначчи
    while fibonacciNumbers.count < count {
        let nextNumber = fibonacciNumbers[fibonacciNumbers.count - 1] + fibonacciNumbers[fibonacciNumbers.count - 2]
        fibonacciNumbers.append(nextNumber)
    }
    
    return fibonacciNumbers
}

let fibonacciSequence = generateFibonacciNumbers(count: 50)
print(fibonacciSequence)

//6 Написать функцию которая находит факториал числа N
//func fibon (nast: Int = 0,  pred: Int, doeto: Int, fibonachiki: [Int] ) -> [Int]{
//    fibonachiki.count = 50
//    let doeto = 0
//    let pred = 1
//    let nast = doeto + pred
//
//
//
//    for i in fibonachiki{
//        nast =
//    }
//
//    return fibonachiki
//}
func factorial(of n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(of: n - 1)
    }
}
//6 Написать функцию которая находит факториал числа N


//7. Задача: Простой калькулятор.
//     Вводим два числа и операцию (сложение, вычитание, умножение, деление), после чего выводим
//     результат.
func plus (_ a: Int, _ b: Int) -> Int {
    return a + b
}
func minus (_ a: Int, _ b: Int) -> Int {
    return a - b
}
func double (_ a: Int, _ b: Int) -> Int {
    return a * b
}
func devide (_ a: Int, _ b: Int) -> Int {
    return a / b
}


//8. Напишите функцию которая пределяет длинну строки.

func dlinna (stroka: String) -> Int{
    return stroka.count
}

//9. Напишите функцию которая определит максимальное числа из трех.
func maksIzTrex (a: Int, b: Int, c: Int) -> Int {
    return max(a, max(b, c))
}

//10. Напишите функцию которая сделает реверс строки которую введет пользователь
func strokaPolzovatelya (_ stroka: String) -> String{
    return String(stroka.reversed())
}

//11. Напишите функцию которая конвертирует время из секунд в часы, минуты и секунды.

func konvert (sekundi: Int) -> (hours: Int, minutes: Int){
    let hours = sekundi / 3600
    let minutes = (sekundi % 3600) / 60
    return (hours, minutes)

}

//12. Напишите функцию которая подсчитает количество слов в строке.

func kolichS(in tekst: String) -> Int {
    let slova = tekst.split(separator: " ")
    return slova.count
}

//13. Напишите функцию которая выведит каждое слово строки на новой строке.

func kajdoyeSlovo (in tekst: String) {
    let slova = tekst.split(separator: " ")
    for slovo in slova{
        print(slovo)
    }
}
//14. Напишите функцию которая выведит каждое слово через определенный интервал времени.

//----------------

//15. Напишите функцию которая выведет количество слов в введенной строке
func kolich (slova: String) -> Int{
    let text = slova.split(separator: " ")
    let chislo = text.count
    return chislo
}
