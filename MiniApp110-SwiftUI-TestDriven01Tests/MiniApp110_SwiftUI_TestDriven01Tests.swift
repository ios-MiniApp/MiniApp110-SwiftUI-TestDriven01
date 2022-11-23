//
//  MiniApp110_SwiftUI_TestDriven01Tests.swift
//  MiniApp110-SwiftUI-TestDriven01Tests
//
//  Created by 前田航汰 on 2022/11/23.
//

import XCTest
import ViewInspector
@testable import MiniApp110_SwiftUI_TestDriven01
extension ArticleListView: Inspectable{}

final class MiniApp110_SwiftUI_TestDriven01Tests: XCTestCase {

    func test_タイトルが表示されていること() {
        let view = ArticleListView()
        let textLabel = try! view.inspect().zStack().vStack(0).text(0).string()

        XCTAssertEqual(textLabel, "記事タイトル")
    }

}
