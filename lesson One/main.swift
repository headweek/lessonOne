//
//  main.swift
//  lesson One
//
//  Created by Salman Abdullayev on 20.09.23.
//

import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

enum CarAction {
    case startEngine
    case stopEngine
    case openWindow
    case closedWindow
    case loadCargo (volume: Double)
    case unloadCargo (volume: Double)
}

struct SportCar {
    var brand: String
    var year: Int
    var trunkVolume: Double
    var engineRunning: Bool
    var windowsOpen: Bool
    var filledTrunkVolume: Double
    
    mutating func perform (action : CarAction){
        switch action{
        case .startEngine:
            engineRunning = true
        case .stopEngine:
            engineRunning = false
        case .openWindow:
            windowsOpen = true
        case .closedWindow:
            windowsOpen = true
        case .loadCargo(let volume):
            if filledTrunkVolume + volume <= trunkVolume {
                filledTrunkVolume += volume
            } else {
                print("Nodastatochno mesta")
            }
        case .unloadCargo(let volume):
            if filledTrunkVolume >= trunkVolume {
                filledTrunkVolume -= volume
            }else{
                print("nedostaochno qruza")
            }
        }
    }
}
struct TrunkCar {
    var brand: String
    var year: Int
    var bodyVolume: Double
    var engineRunning: Bool
    var windowsOpen: Bool
    var filledBodyVolume: Double
    
    mutating func perform (action : CarAction){
        switch action{
        case .startEngine:
            engineRunning = true
        case .stopEngine:
            engineRunning = false
        case .openWindow:
            windowsOpen = true
        case .closedWindow:
            windowsOpen = true
        case .loadCargo(let volume):
            if filledBodyVolume + volume <= bodyVolume {
                filledBodyVolume += volume
            } else {
                print("Nodastatochno mesta")
            }
        case .unloadCargo(let volume):
            if filledBodyVolume >= bodyVolume {
                filledBodyVolume -= volume
            }else{
                print("nedostaochno qruza")
            }
        }
    }
}

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//2. Описать пару его наследников TrunkCar и SportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет TrunkCar, а какие – SportCar. Добавить эти действия в перечисление.
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.

// Перечисление с действиями над автомобилем
enum CarAction2 {
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
    case loadCargo(volume: Double)
    case unloadCargo(volume: Double)
}

// Базовый класс автомобиля
class Car2 {
    var brand: String
    var year: Int
    var engineRunning: Bool
    var windowsOpen: Bool
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
        self.engineRunning = false
        self.windowsOpen = false
    }
    
    func perform(action: CarAction) {
        // Пустая реализация, будет переопределена в подклассах
    }
}

// Подкласс грузового автомобиля
class TrunkCar2: Car2 {
    var cargoVolume: Double
    
    init(brand: String, year: Int, cargoVolume: Double) {
        self.cargoVolume = cargoVolume
        super.init(brand: brand, year: year)
    }
    
     func perform(action: CarAction2) {
        switch action {
        case .startEngine:
            engineRunning = true
        case .stopEngine:
            engineRunning = false
        case .openWindows:
            windowsOpen = true
        case .closeWindows:
            windowsOpen = false
        case .loadCargo(let volume):
            if cargoVolume >= volume {
                cargoVolume -= volume
            } else {
                print("Недостаточно места в кузове")
            }
        case .unloadCargo(let volume):
            if cargoVolume + volume <= 10000 {
                cargoVolume += volume
            } else {
                print("Недостаточно свободного места в кузове")
            }
        }
    }
}

// Подкласс спортивного автомобиля
class SportCar2: Car2 {
    var topSpeed: Double
    
    init(brand: String, year: Int, topSpeed: Double) {
        self.topSpeed = topSpeed
        super.init(brand: brand, year: year)
    }
    
     func perform(action: CarAction2) {
        switch action {
        case .startEngine:
            engineRunning = true
        case .stopEngine:
            engineRunning = false
        case .openWindows:
            windowsOpen = true
        case .closeWindows:
            windowsOpen = false
        default:
            break
        }
    }
}
