import Foundation
@testable import StandingTheTestOfTime

class FakeDateProvider: DateProvider {
    var currentDateTime_returnValue = Date()

    func currentDateTime() -> Date {
        return currentDateTime_returnValue
    }
}
