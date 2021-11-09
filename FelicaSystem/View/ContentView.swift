//
//  ContentView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/06.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: TabItem = .reader
    
    init(){
        //タブ背景非表示
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $selection) {
                ReaderMainView()
                    .tag(TabItem.reader)
                DatabaseMainView()
                    .tag(TabItem.database)
                AccountMainView()
                    .tag(TabItem.account)
            }
            
            VStack{
                Spacer()
                HStack {
                    Spacer()
                    ForEach(TabItem.allCases, id: \.self) { tabItem in
                        TabItemView(tabItem: tabItem, selected: $selection)
                        Spacer()
                    }
                }
                .padding(.vertical, 10.0)
                .padding(.horizontal, 32.0)
                .background(Color("colorCardView").clipShape(Capsule()))
                .compositingGroup()
            }
            .padding(16.0)
            .shadow(radius: 8.0)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
