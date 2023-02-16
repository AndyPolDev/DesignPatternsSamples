import UIKit

class AdapterViewController: UIViewController {
    // 5. работаем через адаптер
    var authService: IAuthenticationService = GoogleAuthAdapter()
    //var authService: IAuthenticationService = TwitterAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()

        createUser(email: "goldenvi@yandex.ru", password: "1234567")
    }
    
    func createUser(email: String, password: String) {
        authService.login(email: email, password: password) { user, token in
            print("Auth success, user: \(user.email), with token: \(token.value)")
        } failure: { error in
            print(error?.localizedDescription as Any)
        }
    }
}
