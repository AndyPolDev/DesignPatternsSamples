import Foundation
// 1. создаем легаси класс, или библиотеку GoogleAuth

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

public class GoogleAuth {
    public func login(email: String,
                      password: String,
                      completion: @escaping (GoogleUser?, Error?) -> Void) {
        
        let token = "special-token-google"
        let user = GoogleUser(email: email,
                              password: password,
                              token: token)
        
        completion(user, nil)
    }
}
