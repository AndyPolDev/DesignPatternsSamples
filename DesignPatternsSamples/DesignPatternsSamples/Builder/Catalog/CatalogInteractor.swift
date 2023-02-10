// 4. Создаем класс отвечающий за бизнес логику, выделяем интерфейс
import Foundation

protocol IInteractor{
    init(presenter: IPresenter)
}

class CatalogInteractor: IInteractor {
    var presenter: IPresenter!
    
    required init(presenter: IPresenter) {
        self.presenter = presenter
    }
}


