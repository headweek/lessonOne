//
//  main.swift
//  lesson One
//
//  Created by Salman Abdullayev on 20.09.23.
//

import Foundation

//-1  Задание: Времена года и их температура
//
//Описание: Создайте приложение, которое отображает среднюю температуру для различных времен года.
//
//Требования:
//
//Перечисление "Времена года»: Создайте перечисление Season с четырьмя вариантами: Winter, Spring, Summer и Fall.
//
//Средняя температура: Каждому времени года должна соответствовать средняя температура. Используйте свойство вычисляемого типа (computed property) для этой цели.
//
//Вывод температуры: Реализуйте функцию, которая выводит среднюю температуру для выбранного времени года.
//
//Ожидаемый результат: При запуске приложения можно получить среднюю температуру для любого из четырех времен года.

enum Seasons {
    case Winter, Spring, Summer, Fall
    
    var computed : Double {
        switch self {
        case .Fall:
            return 10.0
        case .Spring:
            return 15.0
        case .Summer:
            return 25.0
        case .Winter:
            return 0.0
        }
    }
}
func displaySeasonTemp (season: Seasons) {
    let temperature = season.computed
    print("Pemperatura na \(season) sostovlayet \(temperature)")
}


//2 -  Задание: Информация о транспортных средствах
//
//Описание: Создайте приложение, которое предоставляет информацию о различных видах транспортных средств, таких как их максимальная скорость.
//
//Требования:
//
//Перечисление "Транспорт":  Создайте перечисление Transport с различными типами транспортных средств, такими как автомобиль, велосипед, поезд и самолет.
//
//Максимальная скорость: Для каждого транспортного средства укажите его максимальную скорость. Используйте ассоциативные значения для этой цели.
//
//Вывод информации: Реализуйте функцию, которая выводит максимальную скорость для выбранного транспортного средства.
//
//Ожидаемый результат: Пользователь может узнать максимальную скорость любого из указанных транспортных средств.

enum Transport {
    case Avto, Vehicle, Train, Airplane
    
    var speedForEachOne: Double {
        switch self {
        case .Airplane:
            return 500.0
        case .Avto:
            return 100.0
        case .Train:
            return 60.0
        case .Vehicle:
            return 40.0
        }
    }
}
func speedShow (transport: Transport) {
    let transportSpeed = transport.speedForEachOne
    print("Skorost dlya \(transport) budet \(transportSpeed)")
}


enum Transfer {
    case car(speed: Int)
    case bicycle(speed: Int)
    case train(speed: Int)
    case airplane(speed: Int)
    
    var maxSpeed: Int {
        switch self {
        case .car(let speed):
            return speed
        case .bicycle(let speed):
            return speed
        case .train(let speed):
            return speed
        case .airplane(let speed):
            return speed
        }
    }
}

func displayMaxSpeed(for transport: Transfer) {
    let speed = transport.maxSpeed
    switch transport {
    case .car:
        print("Максимальная скорость автомобиля: \(speed) км/ч.")
    case .bicycle:
        print("Максимальная скорость велосипеда: \(speed) км/ч.")
    case .train:
        print("Максимальная скорость поезда: \(speed) км/ч.")
    case .airplane:
        print("Максимальная скорость самолета: \(speed) км/ч.")
    }
}

// Пример использования:
let car = Transfer.car(speed: 200)
let bicycle = Transfer.bicycle(speed: 30)
let train = Transfer.train(speed: 150)
let airplane = Transfer.airplane(speed: 900)

displayMaxSpeed(for: car)
displayMaxSpeed(for: bicycle)
displayMaxSpeed(for: train)
displayMaxSpeed(for: airplane)


//3 -  Задание: Статусы платежей
//
//Описание: Создайте систему учета статусов платежей, которая позволяет отслеживать различные этапы обработки платежа.
//
//Требования:
//
//Перечисление "Статус платежа»: Создайте перечисление PaymentStatus со статусами: Неоплачено, В обработке, Оплачено, Ошибка.
//
//Дополнительная информация: Некоторые статусы требуют дополнительной информации. Например, для оплаченного статуса нужна дата оплаты, а для статуса ошибки - сообщение об ошибке. Используйте ассоциативные значения для сохранения этой информации.
//
//Вывод информации: Реализуйте функционал, который позволяет пользователю узнать дату оплаты для определенного платежа или причину ошибки.
//
//Ожидаемый результат: Пользователь может узнать детали каждого платежа в зависимости от его статуса.


enum PaymentStatus {
    case notPaid
    case processing
    case paid(date: String)
    case error(message: String)
}

func getPaymentDetails(status: PaymentStatus) {
    switch status {
    case .notPaid:
        print("Платеж неоплачен.")
    case .processing:
        print("Платеж находится в обработке.")
    case .paid(let date):
        print("Платеж оплачен. Дата оплаты: \(date)")
    case .error(let message):
        print("Ошибка при обработке платежа: \(message)")
    }
}

//4 -  Задание: Рекомендации по режимам камеры
//
//Описание: Создайте систему, которая дает рекомендации по использованию различных режимов камеры.
//
//Требования:
//
//Перечисление "Режим камеры»: Создайте перечисление CameraMode с режимами: Авто, Портрет, Ландшафт, Ночной.
//
//Рекомендации: Для каждого режима предоставьте рекомендацию, когда и как лучше его использовать.
//
//Получение рекомендации: Реализуйте функционал, который позволяет пользователю получить рекомендацию для выбранного режима камеры.
//
//Ожидаемый результат: При выборе определенного режима камеры пользователь получает рекомендацию по его использованию.


enum CameraMode {
    case Auto, Portreit, Landscape, Night
    
    func cameraMode () -> String {
        switch self {
        case .Auto:
            return "rekomendaciya dlya Avto"
        case .Landscape:
            return "Rekomendaciya dlya Land"
        case .Night:
            return "Rekomendaciya dlya Nochnovo rejima"
        case .Portreit:
            return "Rekomendaciya dlya Portreta"
        }
    }
}




//5 - Задание: Диеты животных в зоопарке
//
//Описание: Создайте информационную систему о типах животных в зоопарке и их предпочтениях в пище.
//
//Требования:
//
//Перечисление "Тип животного»: Создайте перечисление AnimalType с типами: Хищник, Травоядное, Насекомое.
//
//Диета: Укажите, что ест каждый тип животного.
//
//Получение информации о диете: Реализуйте функционал, который позволяет узнать, что ест определенное животное.
//
//Ожидаемый результат:  Пользователь может узнать, что ест определенное животное в зоопарке.

enum AnimalType {
    case Predator, Herbivore, Insect
    
    func getDiet () -> String {
        switch self {
        case .Predator:
            return "PPPPP"
        case .Herbivore:
            return "HHHHH"
        case .Insect:
            return "IIIIII"
        }
    }
}

//6 - Задание: Отслеживание статуса заказа в ресторане
//
//Описание: Разработайте систему, которая позволяет отслеживать статус приготовления заказа в ресторане.
//
//Требования:
//
//Перечисление "Статус заказа»: Создайте перечисление OrderStatus со статусами: Принят, Готовится, Готов к подаче, Доставляется.
//
//Следующий статус: Реализуйте функционал, который показывает, какой статус будет следующим после текущего.
//
//Получение следующего статуса: Пользователь может узнать, какой статус будет следующим для его заказа.
//
//Ожидаемый результат: Пользователь может отслеживать, на каком этапе находится его заказ.

enum OrderStatus {
    case accepted
    case preparing
    case readyForDelivery
    case onDelivery
    
    func getNextStatus() -> OrderStatus {
        switch self {
        case .accepted:
            return .preparing
        case .preparing:
            return .readyForDelivery
        case .readyForDelivery:
            return .onDelivery
        case .onDelivery:
            return .accepted // После доставки заказа он возвращается к статусу "Принят"
        }
    }
}

//7 - Задание: Информация о номерах в отеле
//
//Описание: Создайте систему, которая предоставляет информацию о различных типах номеров в отеле.
//
//Требования:
//
//Перечисление "Тип комнаты»: Создайте перечисление RoomType с типами номеров: Одноместный, Двухместный, Люкс.
//
//Информация о комнате: Для каждого типа комнаты укажите его стоимость и количество доступных номеров.
//
//Получение информации о комнате: Пользователь может узнать стоимость и количество доступных номеров для выбранного типа комнаты.
//
//Ожидаемый результат: Пользователь может узнать детали о различных типах номеров в отеле.

enum RoomType {
    case single
    case double
    case luxury
    
    var cost: Double {
        switch self {
        case .single:
            return 100.0
        case .double:
            return 150.0
        case .luxury:
            return 250.0
        }
    }
    var availableRooms: Int {
            // Предположим, что у нас всегда есть 10 доступных номеров каждого типа
            return 10
        }
}
func getRoomInformation(for roomType: RoomType) -> (cost: Double, availableRooms: Int) {
    let cost = roomType.cost
    let availableRooms = roomType.availableRooms
    return (cost, availableRooms)
}

//8 - Задание: Уровни сложности в игре
//
//Описание: Разработайте систему, которая позволяет определить параметры игры на основе выбранного уровня сложности.
//
//Требования:
//
//Перечисление "Уровень сложности»: Создайте перечисление DifficultyLevel с уровнями: Легкий, Средний, Тяжелый, Эксперт.
//
//Параметры игры: Укажите количество врагов и временные ограничения для каждого уровня сложности.
//
//Получение параметров: Реализуйте функционал, который позволяет пользователю узнать параметры игры для выбранного уровня сложности.
//
//Ожидаемый результат: Пользователь может узнать, сколько врагов и какое временное ограничение установлено для выбранного уровня сложности.

enum DifficultlyLevel {
    case Easy, Medium, Hard, Expert
    
    var time: Double {
        switch self {
        case .Easy:
            return 10.0
        case .Medium:
            return 20.0
        case .Hard:
            return 50.0
        case .Expert:
            return 100.0
        }
    }
    var enemysCount: Int {
        return 10
    }
}
func gameEnemy(level: DifficultlyLevel) -> (time: Double, enemyCount: Int) {
    let time = level.time
    let enemysCount = level.enemysCount
    return (time, enemysCount)
}

//9 - Задание: Прогноз погоды по облачности
//
//Описание: Создайте систему, которая предоставляет информацию о вероятности осадков на основе уровня облачности.
//
//Требования:
//
//Перечисление "Облачность»: Создайте перечисление Cloudiness с уровнями: Ясно, Частичная облачность, Облачно, Пасмурно.
//
//Вероятность осадков: Укажите вероятность осадков для каждого уровня облачности.
//
//Получение прогноза: Реализуйте функционал, который позволяет пользователю узнать вероятность осадков для выбранного уровня облачности.
//
//Ожидаемый результат: Пользователь может узнать вероятность осадков, основываясь на текущем уровне облачности.

enum Cloudiness {
    case clear, partiallyCloudy, cloudy, overcast
    
    var rainProbability: Double {
        switch self {
        case .clear:
            return 0.1 // 10% вероятность осадков
        case .partiallyCloudy:
            return 0.3 // 30% вероятность осадков
        case .cloudy:
            return 0.6 // 60% вероятность осадков
        case .overcast:
            return 0.8 // 80% вероятность осадков
        }
    }
}

func getRainProbability(for cloudiness: Cloudiness) -> Double {
    return cloudiness.rainProbability
}

//10 - Задание: Цены напитков в автомате
//
//Описание: Создайте систему, которая предоставляет информацию о стоимости различных напитков, доступных в автомате.
//
//Требования:
//
//Перечисление "Тип напитка»: Создайте перечисление DrinkType с напитками: Кофе, Чай, Горячий шоколад, Вода.
//
//Стоимость напитка: Укажите стоимость каждого напитка.
//
//Получение цены: Реализуйте функционал, который позволяет пользователю узнать стоимость выбранного напитка.
//
//Ожидаемый результат: Пользователь может узнать стоимость напитка перед тем, как совершить покупку в автомате.

enum DrintType {
    case coffee, tea, hotChocolate, water
    
    var price: Double {
        switch self {
        case .coffee:
            return 2.0
        case .hotChocolate:
            return 5.0
        case .tea:
            return 6.0
        case .water:
            return 1.0
        }
    }
}
func getPrice (price: DrintType) -> Double {
    return price.price
}
