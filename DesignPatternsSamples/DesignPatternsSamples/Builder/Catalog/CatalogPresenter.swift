import Foundation
// 1. Создаем протокол презентера
protocol IPresenter {
    var messageInfo: String {get}
}

// 2. Создаем класс презентер каталога
class CatalogPresenter: IPresenter {
    var messageInfo: String = "CatalogPresenter создает viewModel для представления"
    
    weak var viewController: CatalogViewController?
}
