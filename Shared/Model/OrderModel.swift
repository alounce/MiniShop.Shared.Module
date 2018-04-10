//
//  OrderModel.swift
//  MiniShop
//
//  Created by Alexander Karpenko on 3/22/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

public struct DetailModel: Codable {
    public var productId: Int
    public var qty: Int

    enum CodingKeys: String, CodingKey {
        case productId = "product"
        case qty = "qty"
    }
}

public struct OrderModel: Codable {
    public var id: Int
    public var type: Int
    public var date: String
    public var details = [DetailModel]()
    
    public init(id: Int, type: Int, date: String, details: [DetailModel]) {
        self.id = id
        self.type = type
        self.date = date
        self.details = details
    }

    public mutating func addDetail(productId: Int, qty: Int) {
        let detail = DetailModel(productId: productId, qty: qty)
        details.append(detail)
    }

    public mutating func removeDetail(productId: Int) {
        if let index = details.index(where: { $0.productId == productId }) {
            details.remove(at: index)
        }
    }
}
