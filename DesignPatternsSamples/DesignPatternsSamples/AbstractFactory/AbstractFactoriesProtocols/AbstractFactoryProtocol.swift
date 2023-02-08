import Foundation

// 3. Создаем протокол для абстрактной фабрики
protocol AbstractFactoryProtocol {
    func createChair() -> ChairProtocol
    func createTable() -> TableProtocol
    func createBed() -> BedProtocol
}
