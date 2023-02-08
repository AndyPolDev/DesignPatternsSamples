import Foundation

// 4. реализуем класс Фабрику для продуктов спальни
class BedProductsFactory: AbstractFactoryProtocol {
    
    func createChair() -> ChairProtocol {
        print("Cтул для спальни создан")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return ChairBadroom()
    }
    
    func createTable() -> TableProtocol {
        print("Стол для спальни создан")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return TableBedroom()
    }
    
    func createBed() -> BedProtocol {
        print("Кровать для спальни создана")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return BedForBedroom()
    }
}
