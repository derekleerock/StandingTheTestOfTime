import XCTest
@testable import StandingTheTestOfTime

class StandingTheTestOfTimeTests: XCTestCase {

    func testTimeRemainingUntilDeparture_returnsCorrectTimeInterval() {
        let tripHome = Flight(
            flightNumber: "JAL925",
            departureCityCode: "HND",
            departureDateTime: Date(
                timeIntervalSince1970: DateFixture.apr_25_2017_19_12
            ),
            arrivalCityCode: "OKA",
            arrivalDateTime: Date(
                timeIntervalSince1970: DateFixture.apr_25_2017_22_12
            )
        )

        let fakeDateProvider = FakeDateProvider()
        fakeDateProvider.currentDateTime_returnValue = Date(
            timeIntervalSince1970: DateFixture.apr_24_2017_19_12
        )


        let remainingTime = tripHome.timeRemainingUntilDeparture(
            dateProvider: fakeDateProvider
        )


        let oneDayInSeconds = 60 * 60 * 24
        XCTAssertEqual(Int(remainingTime), oneDayInSeconds)
    }

}
