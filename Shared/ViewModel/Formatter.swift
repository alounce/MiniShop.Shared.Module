//
//  Formatter.swift
//  MiniShop
//
//  Created by Alexander Karpenko on 3/24/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

public struct Formatter {
    public static func stringFromMoney(_ value: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: value)) ?? "-"
    }

    public static func stringFromDateString(_ value: String) -> String {
        let input = DateFormatter()
        input.dateFormat = "yyyy/MM/dd"
        guard let dateValue = input.date(from: value) else { return "Unknown" }
        let output = DateFormatter()
        output.dateStyle = .medium
        output.timeStyle = .none
        let stringValue = output.string(from: dateValue)
        return stringValue
    }

    public static func stringFromQty(_ value: Int) -> String {
        return "\(value) pcs."
    }
}
