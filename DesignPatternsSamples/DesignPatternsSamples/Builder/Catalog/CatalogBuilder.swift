// 9. Создаем билдер для каталога, для каждого каталога нужен свой билдер

import UIKit
 
class CatalogBuilder: IModuleBuilder {
    // title - название нашего каталога
    var title: String?
    
    func setTitle(_ title: String) -> CatalogBuilder {
        self.title = title
        return self
    }
    
    func build() -> UIViewController {
        guard let title = title else { fatalError("Вы должны добавить title") }
        //10. собираем каталог
        let presenter = CatalogPresenter()
        let interactor = CatalogInteractor(presenter: presenter)
        let controller = CatalogViewController(title: title, interactor: interactor)
        // 11. присваиваем презентеру собранный контроллер
        presenter.viewController = controller
        
        return controller
    }
}
