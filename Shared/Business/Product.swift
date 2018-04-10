//
//  Product.swift
//  MiniShop
//
//  Created by Alexander Karpenko on 3/22/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import Foundation

public class Product {

    // MARK: - Cache implementation
    public static var productById = [Int: Product]()
    
    public static func cache(products: [Product]) {
        productById = products
            .reduce([Int: Product]()) { lookup, product -> [Int: Product] in
                var lookup = lookup
                lookup[product.id] = product
                return lookup
        }
    }

    // MARK: - Properties
    let model: ProductModel
    public var id: Int { return model.id }
    public var title: String { return model.title }
    public var details: String { return model.details }
    public var price: Int { return model.price }

    // MARK: - Initializer
    public init(model: ProductModel) {
        self.model = model
    }

}
