//
//  UIImageCompressTests.swift
//  SWCommonExtensions_Tests
//
//  Created by SSD on 2020/6/19.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import XCTest
import SWCommonExtensions
class UIImageCompressTests: XCTestCase {
    let image0 = UIImage(imageLiteralResourceName: "IMG_0")
    let image1 = UIImage(imageLiteralResourceName: "IMG_1")
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCompress() {
        let oriData = image0.jpegData(compressionQuality: 1)
        let data = image0.compressImageData(maxKBSize: 500)
        assert(data?.count ?? 0 < oriData?.count ?? 0)
    }
    func testLessThanMaxSize() {
        let oriData = image1.jpegData(compressionQuality: 1)
        let data = image1.compressImageData(maxKBSize: 500)
        assert(data?.count ?? 0 == oriData?.count ?? 0)
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
