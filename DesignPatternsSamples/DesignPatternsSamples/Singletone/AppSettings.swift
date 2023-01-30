// Пример синглтона "Настройки проекта"

import UIKit

final class Settings {
    // Создаем экземпляр класса
    static let shared = Settings()
    
    var volume: Float = 2.3
    var colour = UIColor.white

    // Cоздаем приватный init чтобы нельзя было переопределять класс
    private init() {}
}
