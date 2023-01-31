// 2. Создаем класс для конкретного упражнения Jumping. Конфермим к протоколу описывающему упражнения

import Foundation

class Jumping: Exercise {
    var name: String = "Прыжки"
    
    var type: String = "Упражнения для ног"
    
    func start() {
        print("Начинаем упражнение \(name)")
    }
    
    func stop() {
        print("Заканчиваем упражнение \(name)")
    }
}
