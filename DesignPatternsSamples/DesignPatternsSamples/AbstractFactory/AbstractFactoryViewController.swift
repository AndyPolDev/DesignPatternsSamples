import UIKit

class AbstractFactoryViewController: UIViewController {
    
    // 6. oбъявляем продукты
    var chair: ChairProtocol?
    var table: TableProtocol?
    var bed: BedProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func kitchenOrderButtonPressed(_ sender: UIButton) {
        // 7. создаем продукты с помощью соответствующей фабрики
        chair = KitchenProductsFuctory().createChair()
        table = KitchenProductsFuctory().createTable()
        bed = KitchenProductsFuctory().createBed()
    }
    
    @IBAction func bedroomOrderButtonPressed(_ sender: UIButton) {
        // 7. создаем продукты с помощью соответствующей фабрики
        chair = BedProductsFactory().createChair()
        table = BedProductsFactory().createTable()
        bed = BedProductsFactory().createBed()
    }
}
