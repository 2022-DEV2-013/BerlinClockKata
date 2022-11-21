import XCTest
@testable import BerlinClockKata

class ClockTests: XCTestCase {
    
    let clock = Clock()
    
    func test_SecondsLightRowIsIlluminatedWithLightYellow_WhenSecondsValueIsEven() {
        clock.setClockValues(hours: 0, minutes: 0, seconds: 2)
        
        let originalValue = clock.isSecondRowLightIlluminated()
        
        let expected = Lights.Yellow
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_SecondsLightRowIsIlluminatedWithLightOff_WhenSecondsValueIsOdd() {
        clock.setClockValues(hours: 0, minutes: 0, seconds: 5)
        
        let originalValue = clock.isSecondRowLightIlluminated()
        
        let expected = Lights.Off
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightsAreIluminatedOfFiveHourRow_WhenHoursValueIsFive() {
        clock.setClockValues(hours: 5, minutes: 0, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTen() {
        clock.setClockValues(hours: 10, minutes: 0, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTwenty() {
        clock.setClockValues(hours: 20, minutes: 0, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Red,Lights.Red]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsZero() {
        clock.setClockValues(hours: 0, minutes: 0, seconds: 0)
        
        let originalValue = clock.fiveHourLightRow()
        
        let expected = [Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightIsIlluminatedOfOneHourRow_WhenHoursValueisOne() {
        clock.setClockValues(hours: 1, minutes: 1, seconds: 0)
        
        let originalValue = clock.oneHourLightRow()
        
        let expected = [Lights.Red,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfOneHourRow_WhenHoursValueisTwo() {
        clock.setClockValues(hours: 2, minutes: 0, seconds: 0)
        
        let originalValue = clock.oneHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourRedLightsAreIlluminatedOfOneHourRow_WhenHoursValueisFour() {
        clock.setClockValues(hours: 4, minutes: 0, seconds: 0)
        
        let originalValue = clock.oneHourLightRow()
        
        let expected = [Lights.Red,Lights.Red,Lights.Red,Lights.Red]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneYellowLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFive() {
        clock.setClockValues(hours: 4, minutes: 5, seconds: 0)
        
        let originalValue = clock.fiveMinuteLightRow()
        
        let expected = [Lights.Yellow,Lights.Off,Lights.Off,Lights.Off,Lights.Off,
                        Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoYellowLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsTen() {
        clock.setClockValues(hours: 4, minutes: 10, seconds: 0)
        
        let originalValue = clock.fiveMinuteLightRow()
        
        let expected = [Lights.Yellow,Lights.Yellow,Lights.Off,Lights.Off,Lights.Off,
                        Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoYellowLightAndOneRedLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFifteen() {
        clock.setClockValues(hours: 0, minutes: 15, seconds: 0)
        
        let originalValue = clock.fiveMinuteLightRow()
        
        let expected = [Lights.Yellow,Lights.Yellow,Lights.Red,Lights.Off,Lights.Off,
                        Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EightYellowLightAndThreeRedLightIAreIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFifyNine() {
        clock.setClockValues(hours: 0, minutes: 59, seconds: 0)
        
        let originalValue = clock.fiveMinuteLightRow()
        
        let expected = [Lights.Yellow,Lights.Yellow,Lights.Red,Lights.Yellow,Lights.Yellow,
                        Lights.Red,Lights.Yellow,Lights.Yellow,Lights.Red,Lights.Yellow,Lights.Yellow]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroYellowLightAndZeroRedLightAreIlluminatedOfFiveMinuteRow_WhenMinuteValueIsZero() {
        clock.setClockValues(hours: 0, minutes: 0, seconds: 0)
        
        let originalValue = clock.fiveMinuteLightRow()
        
        let expected = [Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off,
                        Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off,Lights.Off]
        XCTAssertEqual(originalValue, expected)
    }
}
