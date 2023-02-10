import UIKit
// 5. Создаем вью контроллер для каталога

class CatalogViewController: UIViewController {
    // 6. Объявляем интерактор
    let interactor: IInteractor!
    
    // 7. DI для интерактора
    init(title: String, interactor: IInteractor) {
        //сначала инектим
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
