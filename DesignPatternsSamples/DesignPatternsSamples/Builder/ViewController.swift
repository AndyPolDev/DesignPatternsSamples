import UIKit

class ViewController: UIViewController {
    
    // 12. Собираем каталог и отображаем его
    // Можно использовать роутеры
    
    @IBAction func buildButtonPressed(_ sender: UIButton) {
        let controller = CatalogBuilder().setTitle("Catalog").build()
        self.present(controller, animated: true)
    }
}
