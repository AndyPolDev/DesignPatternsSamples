//
//  PersonThirdType.swift
//  DesignPatternsSamples
//
//  Created by ANDY on 09.02.2023.
//

import Foundation
// Третья реализация, через протокол
// 1. Создаем протокол
public protocol Copying {
    init(_ prototype: Self)
}
// 2. Добавляем функцию к протоколу
extension Copying {
    public func copy() -> Self {
        return type(of: self).init(self)
    }
}

// 3. Создаем класс реализующий протокол
class PersonThirdType: Copying {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    required convenience init(_ prototype: PersonThirdType) {
        self.init(name: prototype.name)
    }
}
