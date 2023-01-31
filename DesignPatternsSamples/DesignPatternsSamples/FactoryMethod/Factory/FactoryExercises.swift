// 4. Создаем класс Фабрику. Kоторый по требованию пользователя будет возвращать объект конкретного класса
import Foundation

// 5. Cоздаем enum - список упражнений
enum Exercises {
    case jumping, squatting
}

// Класс Фабрика можно "обернуть" в синглтон, можно не оборачивать
class FactoryExercises {
    static let defaultFactory = FactoryExercises()
    // Создаем фабричный метод, в аргументе enum тем самым мы избегаем хардкод, name не обязательно может быть String
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .jumping: return Jumping()
        case .squatting: return Squatting()
        }
    }
}
