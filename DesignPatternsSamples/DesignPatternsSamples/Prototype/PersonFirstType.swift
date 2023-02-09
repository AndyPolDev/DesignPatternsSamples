import Foundation
// Первая реализация
class PersonFirstType {
    var name = ""
    
    //1. Создаем метод для глубокого копирования
    func clone() -> PersonFirstType {
        let person = PersonFirstType()
        person.name = name
        return person
    }
}
