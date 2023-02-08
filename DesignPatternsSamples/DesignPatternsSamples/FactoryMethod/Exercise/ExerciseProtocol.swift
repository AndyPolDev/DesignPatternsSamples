// Пример. Фитнес приложение в котором есть ряд упражнений (приседания, подтягивания, отжимания и тп)

import Foundation

// 1. Создаем протокол - Упражнение. Описываем абстрактное упражнение
protocol ExerciseProtocol {
    var name: String {get}
    var type: String {get}
    
    func start()
    func stop()
}


