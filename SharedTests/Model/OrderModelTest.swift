//
//  OrderModelTest.swift
//  MiniShopSharedTests
//
//  Created by Alexander Karpenko on 4/4/18.
//  Copyright © 2018 Alexander Karpenko. All rights reserved.
//

import XCTest
@testable import Shared

class OrderModelTest: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//    }
//
//    override func tearDown() {
//        super.tearDown()
//    }
    
    func testInitOrderModel() {
        let expectedId = 5
        let expectedType = 1
        let expectedDate = "2018/2/10"
        let expectedProductId = 1
        let expectedQty = 3
        
        let detail = DetailModel(productId: expectedProductId, qty: expectedQty)
        let model = OrderModel(id: expectedId,
                               type: expectedType,
                               date: expectedDate, details: [detail])
        XCTAssertEqual(model.id, expectedId)
        XCTAssertEqual(model.type, expectedType)
        XCTAssertEqual(model.date, expectedDate)
        XCTAssertEqual(model.details[0].productId, expectedProductId)
        XCTAssertEqual(model.details[0].qty, expectedQty)
    }
    
    func test_OrderModel_addDetail() {
        var model = OrderModel(id: 1,
                               type: 1,
                               date: "2018/2/10",
                               details: [])
        
        let expectedProductId = 3
        let expectedQty = 2
        XCTAssertEqual(model.details.isEmpty, true)
        model.addDetail(productId: expectedProductId, qty: expectedQty)
        XCTAssertEqual(model.details.count, 1)
        XCTAssertEqual(model.details[0].productId, expectedProductId)
        XCTAssertEqual(model.details[0].qty, expectedQty)
    }
    
    func test_OrderModel_removeDetail() {
        let expectedProductId = 5
        let detail = DetailModel(productId: expectedProductId, qty: 90)
        var model = OrderModel(id: 1,
                               type: 1,
                               date: "2018/2/10",
                               details: [detail])

        XCTAssertEqual(model.details.count, 1)
        model.removeDetail(productId: expectedProductId)
        XCTAssertEqual(model.details.isEmpty, true)
    }
    
//    func testPerformanceExample() {
//        self.measure {
//        }
//    }
    
}
