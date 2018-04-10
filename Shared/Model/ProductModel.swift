//
//  ProductModel.swift
//  MiniShop
//
//  Created by Alexander Karpenko on 3/22/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

public struct ProductModel: Codable {
    public let id: Int
    public let title: String
    public let details: String
    public let price: Int
}
