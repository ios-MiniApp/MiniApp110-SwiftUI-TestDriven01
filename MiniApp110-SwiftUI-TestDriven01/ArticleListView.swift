//
//  ContentView.swift
//  MiniApp110-SwiftUI-TestDriven01
//
//  Created by 前田航汰 on 2022/11/23.
//

import SwiftUI

struct ArticleListView: View {
    var body: some View {
        ZStack {

            Color.yellow
                .ignoresSafeArea()

            VStack {
                Text("記事タイトル")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
