import Foundation
// 2. создаем легаси класс, или библиотеку GoogleAuth

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuth {
    public func login(email: String,
                      password: String,
                      completion: @escaping (TwitterUser?, Error?) -> Void) {
        
        let token = "special-token-twitter"
        let user = TwitterUser(email: email,
                              password: password,
                              token: token)
        
        completion(user, nil)
    }
}
