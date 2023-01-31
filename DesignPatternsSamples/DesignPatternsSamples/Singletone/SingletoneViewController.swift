import UIKit

class SingletoneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Singleton usage
        print(Settings.shared.volume)
        Settings.shared.volume = 3.4
        print(Settings.shared.volume)
    }
}
 
