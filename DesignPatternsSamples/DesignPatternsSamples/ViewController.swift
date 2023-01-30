import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Settings.shared.volume)
        Settings.shared.volume = 3.4
        print(Settings.shared.volume)

    }
}
 
