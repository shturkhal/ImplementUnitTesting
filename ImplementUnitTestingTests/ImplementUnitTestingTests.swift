//
//  ImplementUnitTestingTests.swift
//  ImplementUnitTestingTests
//
//  Created by Іван Штурхаль on 20.03.2024.
//

import XCTest
@testable import ImplementUnitTesting

final class ImplementUnitTestingTests: XCTestCase {

    func test_calculateTotal_salesTaxTwentyPercent() {
        
        let items = [CheckoutItem(name: "Fish and Chips", price: 625),
                     CheckoutItem(name: "Pizza", price: 850),
                     CheckoutItem(name: "Sushi", price: 325),
                     CheckoutItem(name: "MilkShake", price: 175)
        
        ]
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 2370)
    }

}
