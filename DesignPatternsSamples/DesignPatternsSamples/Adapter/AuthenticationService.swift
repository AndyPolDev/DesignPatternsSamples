import Foundation

// 3. Создаем абстрактный протокол Адаптера

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol IAuthenticationService {
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void)
}
