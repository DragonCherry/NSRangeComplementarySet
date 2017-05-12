import UIKit
import XCTest
@testable import NSRangeComplementarySet

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let range = NSRange(location: 10, length: 10)
        
        if let complementarySetOfRange = range - NSRange(location: 10, length: 3) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 13)
            XCTAssertTrue(complementarySetOfRange[0].length == 7)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 8, length: 5) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 13)
            XCTAssertTrue(complementarySetOfRange[0].length == 7)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 15, length: 4) {
            XCTAssertTrue(complementarySetOfRange.count == 2)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 5)
            XCTAssertTrue(complementarySetOfRange[1].location == 19)
            XCTAssertTrue(complementarySetOfRange[1].length == 1)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 15, length: 5) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 5)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 15, length: 10) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 5)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 15, length: 0) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 10)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 10, length: 0) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 10)
        } else {
            fatalError("Check complementary set logic error.")
        }
        
        if let complementarySetOfRange = range - NSRange(location: 20, length: 0) {
            XCTAssertTrue(complementarySetOfRange.count == 1)
            XCTAssertTrue(complementarySetOfRange[0].location == 10)
            XCTAssertTrue(complementarySetOfRange[0].length == 10)
        } else {
            fatalError("Check complementary set logic error.")
        }
    }
}
