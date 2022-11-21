import XCTest
@testable import BerlinClockKata

class ClockTests: XCTestCase {
    
    let clock = Clock()
    
    func test_SecondsLightRowIsIlluminatedWithLightYellow_WhenSecondsValueIsEven() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 2)
        
        let originalValue = clock.secondLightRow(Time.seconds)
        
        let expected = [Light.Yellow]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_SecondsLightRowIsIlluminatedWithLightOff_WhenSecondsValueIsOdd() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 5)
        
        let originalValue = clock.secondLightRow(Time.seconds)
        
        let expected = [Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightsAreIluminatedOfFiveHourRow_WhenHoursValueIsFive() {
        let Time = DigitalTime(hours: 5, minutes: 0, seconds: 0)
      
        let originalValue = clock.fiveHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTen() {
        let Time = DigitalTime(hours: 10, minutes: 0, seconds: 0)
       
        let originalValue = clock.fiveHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Red,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsTwenty() {
        let Time = DigitalTime(hours: 20, minutes: 0, seconds: 0)
       
        let originalValue = clock.fiveHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Red,Light.Red,Light.Red]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroRedLightsAreIlluminatedOfFiveHourRow_WhenHoursValueIsZero() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 0)
       
        let originalValue = clock.fiveHourLightRow(Time.hours)
        
        let expected = [Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneRedLightIsIlluminatedOfOneHourRow_WhenHoursValueisOne() {
        let Time = DigitalTime(hours: 1, minutes: 1, seconds: 0)
       
        let originalValue = clock.oneHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoRedLightsAreIlluminatedOfOneHourRow_WhenHoursValueisTwo() {
        let Time = DigitalTime(hours: 2, minutes: 0, seconds: 0)
        
        let originalValue = clock.oneHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Red,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourRedLightsAreIlluminatedOfOneHourRow_WhenHoursValueisFour() {
        let Time = DigitalTime(hours: 4, minutes: 0, seconds: 0)
     
        let originalValue = clock.oneHourLightRow(Time.hours)
        
        let expected = [Light.Red,Light.Red,Light.Red,Light.Red]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneYellowLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFive() {
        let Time = DigitalTime(hours: 0, minutes: 5, seconds: 0)
    
        let originalValue = clock.fiveMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Off,Light.Off,Light.Off,Light.Off,
                        Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoYellowLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsTen() {
        let Time = DigitalTime(hours: 0, minutes: 10, seconds: 0)
       
        let originalValue = clock.fiveMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Yellow,Light.Off,Light.Off,Light.Off,
                        Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoYellowLightAndOneRedLightIsIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFifteen() {
        let Time = DigitalTime(hours: 0, minutes: 15, seconds: 0)
      
        let originalValue = clock.fiveMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Yellow,Light.Red,Light.Off,Light.Off,
                        Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EightYellowLightAndThreeRedLightIAreIlluminatedOfFiveMinuteRow_WhenMinuteValueIsFifyNine() {
        let Time = DigitalTime(hours: 0, minutes: 59, seconds: 0)
       
        let originalValue = clock.fiveMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Yellow,Light.Red,Light.Yellow,Light.Yellow,
                        Light.Red,Light.Yellow,Light.Yellow,Light.Red,Light.Yellow,Light.Yellow]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroYellowLightAndZeroRedLightAreIlluminatedOfFiveMinuteRow_WhenMinuteValueIsZero() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 0)
    
        let originalValue = clock.fiveMinuteLightRow(Time.minutes)
        
        let expected = [Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,
                        Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_OneYellowLightIsIlluminatedOfOneMinuteRow_WhenMinuteValueIsOne() {
        let Time = DigitalTime(hours: 0, minutes: 1, seconds: 0)
  
        let originalValue = clock.oneMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_TwoYellowLightAreIlluminatedOfOneMinuteRow_WhenMinuteValueIsTwo() {
        let Time = DigitalTime(hours: 0, minutes: 2, seconds: 0)
      
        let originalValue = clock.oneMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Yellow,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_FourYellowLightAreIlluminatedOfOneMinuteRow_WhenMinuteValueIsFour() {
        let Time = DigitalTime(hours: 0, minutes: 4, seconds: 0)
   
        let originalValue = clock.oneMinuteLightRow(Time.minutes)
        
        let expected = [Light.Yellow,Light.Yellow,Light.Yellow,Light.Yellow]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_ZeroYellowLightAreIlluminatedOfOneMinuteRow_WhenMinuteValueIsZero() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 0)
        
        let originalValue = clock.oneMinuteLightRow(Time.minutes)
        
        let expected = [Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EntireBerlinClock_WhenTimeIsZeroZeroZero() {
        let Time = DigitalTime(hours: 0, minutes: 0, seconds: 0)
        
        let originalValue = getEntireBerlinClock(time: Time)
        
        let expected = [Light.Yellow,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off
                        ,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off
                        ,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off
                        ,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EntireBerlinClock_WhenTimeIsTwentyThreeFiftyNineFiftyNine() {
        let Time = DigitalTime(hours: 23, minutes: 59, seconds: 59)
       
        let originalValue = getEntireBerlinClock(time: Time)
        
        let expected = [Light.Off,Light.Red,Light.Red,Light.Red,Light.Red,Light.Red
                        ,Light.Red,Light.Red,Light.Off,Light.Yellow,Light.Yellow,Light.Red
                        ,Light.Yellow,Light.Yellow,Light.Red,Light.Yellow,Light.Yellow,Light.Red
                        ,Light.Yellow,Light.Yellow,Light.Yellow,Light.Yellow,Light.Yellow,Light.Yellow]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EntireBerlinClock_WhenTimeIsSixteenFiftySix() {
        let Time = DigitalTime(hours: 16, minutes: 50, seconds: 06)
   
        let originalValue = getEntireBerlinClock(time: Time)
        
        let expected = [Light.Yellow,Light.Red,Light.Red,Light.Red,Light.Off,Light.Red
                        ,Light.Off,Light.Off,Light.Off,Light.Yellow,Light.Yellow,Light.Red
                        ,Light.Yellow,Light.Yellow,Light.Red,Light.Yellow,Light.Yellow,Light.Red
                        ,Light.Yellow,Light.Off,Light.Off,Light.Off,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    func test_EntireBerlinClock_WhenTimeIsElevenThirtySevenZeroOne() {
        let Time = DigitalTime(hours: 11, minutes: 37, seconds: 01)
      
        let originalValue = getEntireBerlinClock(time: Time)
        
        let expected = [Light.Off,Light.Red,Light.Red,Light.Off,Light.Off,Light.Red
                        ,Light.Off,Light.Off,Light.Off,Light.Yellow,Light.Yellow,Light.Red
                        ,Light.Yellow,Light.Yellow,Light.Red,Light.Yellow,Light.Off,Light.Off
                        ,Light.Off,Light.Off,Light.Yellow,Light.Yellow,Light.Off,Light.Off]
        XCTAssertEqual(originalValue, expected)
    }
    
    private func getEntireBerlinClock(time: DigitalTime)-> [Light] {
        var originalValue = clock.secondLightRow(time.seconds)
        originalValue.append(contentsOf: clock.fiveHourLightRow(time.hours))
        originalValue.append(contentsOf: clock.oneHourLightRow(time.hours))
        originalValue.append(contentsOf: clock.fiveMinuteLightRow(time.minutes))
        originalValue.append(contentsOf: clock.oneMinuteLightRow(time.minutes))
        return originalValue
    }
}
