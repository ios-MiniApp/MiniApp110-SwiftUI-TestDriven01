//
//  ArticleListAPIClientProtocol.swift
//  MiniApp110-SwiftUI-TestDriven01
//
//  Created by 前田航汰 on 2022/11/27.
//

import Foundation

protocol ArticleListAPIClientProtocol {
  func fetch(completion: @escaping (([Article]?) -> Void))
}
