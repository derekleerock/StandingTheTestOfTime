import Foundation

protocol DateProvider {
    func currentDateTime() -> Date
}

struct DefaultDateProvider: DateProvider {
    func currentDateTime() -> Date {
        return Date()
    }
}
