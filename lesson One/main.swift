//
//  main.swift
//  lesson One
//
//  Created by Salman Abdullayev on 20.09.23.
//

import Foundation

//1. Сортировка чисел:
//Дан массив чисел. Напишите функцию, которая возвращает отсортированный массив в порядке возрастания без использования стандартной функции sort().
func returnM (mass: [Int]) -> [Int] {
return mass.sorted(by: <)
}
let massiv = returnM(mass: [2, 4, 5, 4, 14, 0, 11, 132, 1, -2, 33])
print("sortirovka \(massiv)")
//2. Проверка палиндрома:
//Напишите функцию, которая принимает строку и возвращает true, если строка является палиндромом, и false в противном случае.
func stroka (stroka: String) -> Bool {
guard String(stroka.reversed()) == stroka else {
return false
}
return true
}
let reverse = stroka(stroka: "SalaT")
print(reverse)
//3. Сумма элементов массива:
//Дан массив целых чисел. Напишите функцию, которая возвращает сумму всех элементов массива.
func numbers (nums: [Int]) -> Int{
var summa = 0
for i in nums{
summa += i
}
return summa
}
let a = numbers(nums: [1,2,3,4,5])
print(a)
//4. Конвертация температуры: fahrenheit = (celsius * 9.0/5.0) + 32.0
//Напишите функцию, которая принимает значение температуры в градусах Цельсия и возвращает его эквивалент в градусах Фаренгейта.
func fahrenheit (celsius: Double) -> Double {
return (celsius * 9.0/5.0) + 32.0
}
print(fahrenheit(celsius: 4))
//5. Записная книжка:
//Создайте массив, который содержит имя, телефон и электронную почту. Затем напишите функцию для поиска записи по имени.
let contact = [("Salman", "123123123", "salman@example.com")]
func userData (name: String) -> (String, String, String)? {
for i in contact {
if i.0 == name{
return i
}
}
return nil
}
if let imya = userData(name: "Salman")  {
print("imya budet \(imya.0)")
print("nomre \(imya.1)")
print("email \(imya.2)")
}else{
print("nil")
}
//6. Перестановка элементов массива:
//Напишите функцию, которая принимает массив и возвращает новый массив, где первый элемент становится последним, а последний — первым. Остальные элементы остаются на своих местах.
func swapFirstAndLastInIntArray (numbers: [Int]) -> [Int] {
guard numbers.count >= 2 else{
return numbers
}
var newArray = numbers
let firstNumber = newArray.removeFirst()
let lastNumber = newArray.removeLast()
newArray.insert(lastNumber, at: 0)
newArray.append(firstNumber)
return newArray
}
let changes = swapFirstAndLastInIntArray(numbers: [1,3,3,5,6,9,4,2])
print(changes)
//7. Форматирование строки:
//Напишите функцию, которая принимает строку и делает первую букву каждого слова заглавной.
func lowercase (word: String) -> String {
let eachLetter = word.components(separatedBy: " ")
var newWord = [String]()
for eachl in eachLetter {
if let literal = word.first {
return literal.uppercased() + eachl.dropFirst()
}
}
return word
}
print(lowercase(word: "loose"))
//8. Напишите функцию, которая принимает день недели в форме строки и возвращает соответствующий день недели в числовом формате.
func dayOfWeek (day: String) -> Int? {
switch day{
case "Monday":
return 1
case "Thuesday":
return 2
case "Wednsday":
return 3
case "Thosday":
return 4
case "Friday":
return 5
case "Sudarday":
return 6
case "Sunday":
return 7
default:
return nil
}
}
if dayOfWeek(day: "Monday") != nil {
    print(dayOfWeek(day: "Monday") ?? print(""))
}else{
print("Netu")
}
//9. Уникальные символы:
//Напишите функцию, которая принимает строку и возвращает true, если все символы в строке уникальные, и false в противном случае.
//func unikalnSimvol (simvol: String) -> Bool {
//    let simvoli = simvol.components(separatedBy: " ")
//    for i in 0...simvol.count{
//        for j in (i+1)..<simvol.count{
//            if simvoli[i] == simvoli[j]{
//                return false
//            }
//        }
//    }
//    return true
//}
//print(unikalnSimvol(simvol: "avdfg"))
//10. Слияние массивов:
//Напишите функцию, которая принимает два массива и возвращает один массив, состоящий из элементов обоих массивов.
func massSumm (mass1: [String], mass2: [String]) -> [String] {
return mass1 + mass2
}
print(massSumm(mass1: ["sal", "ddd"], mass2: ["sss", "fff"]))
//11. Подсчет гласных:
//Напишите функцию, которая принимает строку и возвращает количество гласных в ней.
func stroka (str: String) -> Int {
var kolichestvo = 0
let qlasniye: [Character] = ["a","d","f"]
for i in str {
if qlasniye.contains(i){
kolichestvo += 1
}
}
return kolichestvo
}
//12. Удаление дубликатов из массива:
//Напишите функцию, которая принимает массив и возвращает новый массив, который содержит все элементы исходного массива, но без дубликатов.
//13. Сумма всех чисел до N:
//Напишите функцию, которая принимает число N и возвращает сумму всех чисел от 1 до N.
func chislo (num2: Int) -> Int {
var summa = 0
for _ in 1...num2 {
summa += 1
}
return summa
}
print(chislo(num2: 3))
//14. Длинное слово в строке:
//Напишите функцию, которая принимает строку и возвращает самое длинное слово в этой строке.
func dlinnaStroki (stoka: String) -> String {
let longestWord = stoka.components(separatedBy: " ")
var word = ""
for i in longestWord {
if i.count > word.count{
word = i
}
}
return word
}
//15. Сокращение строки:
//Напишите функцию, которая принимает строку и число N, затем возвращает эту строку, но сокращенную до N символов, добавив в конец "...", если строка была усечена.
func ctrokaAndChislo (stochka: String, chislo: Int) -> String {
if stochka.count <= chislo {
return stochka
}else {
let izmenStrochka = stochka.index(stochka.startIndex, offsetBy: chislo)
let urezanniyText = stochka[..<izmenStrochka]
return urezanniyText + "..."
}
}
//16. Объединение двух массивов без дубликатов:
//Напишите функцию, которая принимает два массива чисел и возвращает новый массив, содержащий элементы из обоих массивов, но без повторяющихся элементов.
func mergeArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
var mergedArray = [Int]()
for element in array1 {
if !mergedArray.contains(element) {
mergedArray.append(element)
}
}
for element in array2 {
if !mergedArray.contains(element) {
mergedArray.append(element)
}
}
return mergedArray
}
//17. Количество слов заданной длины:
//Напишите функцию, которая принимает строку и число N, а затем возвращает количество слов в строке, длина которых равна N.
func countWords(ofLength N: Int, in text: String) -> Int {
let words = text.components(separatedBy: " ")
var count = 0
for word in words {
if word.count == N {
count += 1
}
}
return count
}
//18. Угадай число:
//Создайте игру, в которой компьютер случайно выбирает число между 1 и 100, а игрок пытается угадать его за минимальное количество попыток. После каждой попытки компьютер должен сообщать, была ли предыдущая догадка слишком высокой или слишком низкой.
//func squadGame (kadr: Int) {
//    var xod = 0
//    let randomChislo = Int.random(in: 1...100)
//
//    print("Добро пожаловать в игру 'Угадай число'!")
//    print("Компьютер загадал число от 1 до 100. Попробуйте угадать.")
//
//    while true{
//        xod += 1
//        if kadr == randomChislo {
//            print("pravilno")
//            print(xod)
//            break
//        }else if kadr > randomChislo{
//            print("bilo slishkom bolshoye chislo")
//            print(xod)
//        }else if kadr < randomChislo {
//                print("bilo malenkoye chislo")
//                print(xod)
//            }
//        }
//
//    }
//
//
//squadGame(kadr: 5)
//19. Задание: Простой шифратор и дешифратор слов с использованием замены букв
//Описание:
//Реализуйте метод шифрования, который будет заменять определенные буквы другими буквами и метод дешифрования для восстановления исходного сообщения.
//Требования:
//Создайте функцию encode, которая принимает строку и возвращает зашифрованную строку, заменяя a на z, b на y, c на x и так далее.
//Создайте функцию decode, которая принимает зашифрованную строку и возвращает исходную строку, производя обратную замену.
//5. Задание: Нахождение общих элементов двух массивов
//
//Описание: Разработайте функцию, которая определяет общие элементы между двумя массивами и возвращает их в виде нового массива.
//
//Требования:
//
//Функция commonElements:
//
//Входные параметры: два массива целых чисел - array1 и array2.
//Возвращаемое значение: массив целых чисел.
//Логика функции:
//
//Преобразуйте каждый из входных массивов в множества (Set) для устранения возможных дубликатов и для использования встроенных операций множеств.
//Найдите пересечение двух множеств, что даст вам множество общих элементов.
//Преобразуйте результат обратно в массив и верните его.
//Пример использования:
//
//Создайте два тестовых массива: arrayA и arrayB.
//Вызовите функцию commonElements, передав эти массивы в качестве аргументов.
//Выведите на экран результат выполнения функции.
//Подсказки:
//
//Порядок элементов в результирующем массиве может зависеть от внутреннего устройства Set, поэтому не обязательно ожидать определенный порядок.

