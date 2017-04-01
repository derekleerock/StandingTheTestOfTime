import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {

        let tripHome = Flight(
            flightNumber: "JAL925",
            departureCityCode: "HND",
            departureDateTime: Date(timeIntervalSince1970: 1493115120),
            arrivalCityCode: "OKA",
            arrivalDateTime: Date(timeIntervalSince1970: 1493125920)
        )

        let timeIntervalUntilDeparture = tripHome.timeRemainingUntilDeparture(
            dateProvider: DefaultDateProvider()
        )

        let formattedRemainingTime = formatTimeInterval(
            timeInterval: timeIntervalUntilDeparture
        )

        print("Time until departure: " + formattedRemainingTime +
            " (" + String(timeIntervalUntilDeparture) + ")")

        return true
    }

    func formatTimeInterval(timeInterval: TimeInterval) -> String {
        let d = Int(timeInterval / 86400)
        let h = Int(timeInterval / 3600) % 24
        let m = Int(timeInterval / 60) % 60
        let s = Int(timeInterval) % 60

        return "\(d) days, \(h) hours, \(m) minutes, and \(s) seconds"
    }
}
