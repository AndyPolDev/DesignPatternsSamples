import Foundation
// Вторая реализация
class PersonSecondType {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    //1. Создаем метод для глубокого копирования
    func clone() -> PersonSecondType {
        return PersonSecondType(name: self.name)
    }
}
