//
//  PasswordCriteriaTests.swift
//  PasswordTests
//
//  Created by Leonardo Gonçalves on 19/03/23.
//

import XCTest

@testable import Password

class PasswordLengthCriteriaTests: XCTestCase {
    func testShort() throws {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
    }
    
    func testLong() throws {
        var longStr = ""
        for _ in 0...40 {
            longStr = longStr + "1"
        }
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet(longStr))
    }
    
    func testValidShort() throws {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678"))
    }
    
    func testValidLong() throws {
        var longStr = ""
        for _ in 0...31 {
            longStr = longStr + "1"
        }
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet(longStr))
    }
}

class PasswordNoSpaceCriteriaTests: XCTestCase {
    func testNoSpace() throws {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }
    
    func testSpace() throws {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("ab c"))
    }
}

class PasswordUppercaseCriteriaTests: XCTestCase {
    func testUppercase() throws {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("abA"))
    }
    
    func testNoUppercase() throws {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("abc"))
    }
}

class PasswordLowerCriteriaTests: XCTestCase {
    func testLowercase() throws {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("abA"))
    }
    
    func testNoLowercase() throws {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("ABC"))
    }
}

class PasswordDigitCriteriaTests: XCTestCase {
    func testDigit() throws {
        XCTAssertTrue(PasswordCriteria.digitMet("ab3"))
    }
    
    func testNoDigit() throws {
        XCTAssertFalse(PasswordCriteria.digitMet("abc"))
    }
}

class PasswordSpecialCharacterCriteriaTests: XCTestCase {
    func testSpecial() throws {
        XCTAssertTrue(PasswordCriteria.specialCharacterMet("ab@"))
    }
    
    func testNoSpecial() throws {
        XCTAssertFalse(PasswordCriteria.specialCharacterMet("abc"))
    }
}

