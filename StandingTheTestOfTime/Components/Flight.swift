import Foundation

struct Flight {
    let flightNumber: String
    let departureCityCode: String
    let departureDateTime: Date
    let arrivalCityCode: String
    let arrivalDateTime: Date

    func timeRemainingUntilDeparture(dateProvider: DateProvider) -> TimeInterval {
        let departureTimeInterval = departureDateTime.timeIntervalSinceNow

        let currentDateTime = dateProvider.currentDateTime()
        let currentTimeInterval = currentDateTime.timeIntervalSinceNow

        return departureTimeInterval - currentTimeInterval
    }
}
