//
//  ContentView.swift
//  MiniApp110-SwiftUI-TestDriven01
//
//  Created by 前田航汰 on 2022/11/23.
//

import SwiftUI

struct Article: Codable {
  let title: String
}

struct ArticleListView: View {

    let client: ArticleListAPIClientProtocol
    @State private var titleText = ""

    init(client: ArticleListAPIClientProtocol = ArticleListAPIClient()) {
        self.client = client
    }

    var body: some View {
        ZStack {

            Color.white
                .ignoresSafeArea()

            VStack {
                Text(titleText)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
        }.onAppear(perform: loadTitleText)
    }

    func loadTitleText() {
        self.client.fetch(completion: { articleList in
            guard let articleList = articleList,
                  0 < articleList.count else { return
            }
            titleText = articleList[0].title
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
