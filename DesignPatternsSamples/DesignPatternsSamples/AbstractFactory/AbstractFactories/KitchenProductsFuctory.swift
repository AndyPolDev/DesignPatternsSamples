import Foundation

// 4. реализуем класс Фабрику для продуктов спальни
class KitchenProductsFuctory: AbstractFactoryProtocol {
    
    func createChair() -> ChairProtocol {
        print("Cтул для кухни создан")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return ChairKitchen()
    }
    
    func createTable() -> TableProtocol {
        print("Стол для кухни создан")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return TableKitchen()
    }
    
    func createBed() -> BedProtocol {
        print("Кровать для кухни создана")
        // 5. привязываемся к конкретному классу, возвращаем продукт
        return BedForKitchen()
    }
}
