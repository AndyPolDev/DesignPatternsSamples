// 3. Создаем еще один класс для конкретного упражнения Squatting. Конфермим к протоколу описывающему упражнения

import Foundation

class Squatting: Exercise {
    var name: String = "Приседания"
    
    var type: String = "Упражнения для ног"
    
    func start() {
        print("Начинаем упражнение \(name)")
    }
    
    func stop() {
        print("Заканчиваем упражнение \(name)")
    }
}
