//
//  Checkout.swift
//  ImplementUnitTesting
//
//  Created by Іван Штурхаль on 20.03.2024.
//

struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
