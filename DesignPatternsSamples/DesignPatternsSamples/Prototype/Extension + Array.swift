import Foundation
// расширение для массива, чтобы обойти COW

extension Array where Element: Copying {
    public func deepCopy() -> [Element] {
        return map { $0.copy() }
    }
}
