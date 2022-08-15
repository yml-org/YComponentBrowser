//
//  TypographyViewTest.swift
//
//  Created by Y Media Labs on 03/08/22.
//

import XCTest
@testable import YCatalogViewer

final class TypographyViewTest: XCTestCase {
    func testInitWithCoder() throws {
        let sut = TypographyView(coder: try makeCoder(for: makeSUT()))
        XCTAssertNil(sut)
    }
    
    func testPopulate() throws {
        let sut = makeSUT()

        XCTAssertNotEqual(sut.font, .boldSystemFont(ofSize: 20))
        sut.populate(with: TypographyView.Model(font: .boldSystemFont(ofSize: 20)))
        XCTAssertEqual(sut.font, .boldSystemFont(ofSize: 20))
    }
    
    func testReuable() throws {
        let sut = makeSUT()

        sut.prepareForReuse()
        XCTAssertEqual(sut.font, UIFont.systemFont(ofSize: 17))
    }
}

private extension TypographyViewTest {
    func makeSUT(file: StaticString = #filePath, line: UInt = #line) -> TypographyView {
        let sut = TypographyView(frame: .zero)
        trackForMemoryLeak(sut, file: file, line: line)
        return sut
    }
}
