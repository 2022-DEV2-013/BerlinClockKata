import XCTest
@testable import BerlinClockKata

class ClockTests: XCTestCase {
    
    let clock = Clock()
    
    func test_SecondsLightRowIsIlluminatedWithLightYellow_WhenSecondsValueIsEven() {
        clock.setClockValues(hours: 0, seconds: 2)
        
        let originalValue = clock.isSecondRowLightIlluminated()
        
        let expected = Lights.Yellow
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_SecondsLightRowIsIlluminatedWithLightOff_WhenSecondsValueIsOdd() {
        clock.setClockValues(hours: 0, seconds: 5)
        
        let originalValue = clock.isSecondRowLightIlluminated()
        
        let expected = Lights.Off
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightsAreIluminatedOfFiveHourRow_WhenHoursValueIsFive() {
        clock.setClockValues(hours: 5, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTen() {
        clock.setClockValues(hours: 10, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTwenty() {
        clock.setClockValues(hours: 20, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Red,Lights.Red]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsZero() {
        clock.setClockValues(hours: 0, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightIsIlluminatedOfOneHourRow_WhenHoursValueisOne() {
        clock.setClockValues(hours: 1, seconds: 0)
        
        let originalValue = clock.oneHourLightRow()
        
        let expected = [Lights.Red,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfOneHourRow_WhenHoursValueisTwo() {
        clock.setClockValues(hours: 2, seconds: 0)
        
        let originalValue = clock.oneHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
}
