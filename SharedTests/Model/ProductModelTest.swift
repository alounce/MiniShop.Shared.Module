//
//  ProductModelTest.swift
//  MiniShopSharedTests
//
//  Created by Alexander Karpenko on 4/4/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import XCTest
@testable import Shared

class ProductModelTest: XCTestCase {
    
    //    override func setUp() {
    //        super.setUp()
    //    }
    //
    //    override func tearDown() {
    //        super.tearDown()
    //    }
    
    func initProductModel() {
        let expectedId = 3
        let expectedTitle = "iPhone X"
        let expectedDetails = "64 GB, Black"
        let expectedPrice = 1_100
        let model = ProductModel(id: expectedId,
                                 title: expectedTitle,
                                 details: expectedDetails,
                                 price: expectedPrice)
        XCTAssertEqual(model.id, expectedId)
        XCTAssertEqual(model.title, expectedTitle)
        XCTAssertEqual(model.details, expectedDetails)
        XCTAssertEqual(model.price, expectedPrice)
    }
    
    //    func testPerformanceExample() {
    //        self.measure {
    //        }
    //    }
    
}
