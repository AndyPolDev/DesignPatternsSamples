import UIKit

class PrototypeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // PersonFirstType
        var person1 = PersonFirstType()
        person1.name = "Misha"
        // 2. Производим глубокое копирование 
        var person2 = person1.clone()
        print(person1 === person2)
        
        // PersonSecondType
        var person3 = PersonSecondType(name: "Kira")
        var person4 = person3.clone()
        print(person3 === person4)
        
        // PersonSecondType
        var person5 = PersonThirdType(name: "Alex")
        var person6 = person5.copy()
        print(person5 === person6)
    }
}
