//
//  TabItemView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/09.
//

import SwiftUI

struct TabItemView: View {
    let tabItem: TabItem
    @Binding var selected: TabItem
    
    var body: some View {
        VStack{
            Image(selected == tabItem ? tabItem.activeImage : tabItem.disactiveImage)
            Text(tabItem.label)
                .fontWeight(.bold)
                .foregroundColor(Color(selected == tabItem ? tabItem.activeColor : "textcolor_main" ))
                .font(.caption)
        }
        .onTapGesture {
            withAnimation(.spring()) {
                selected = tabItem // タップしたら自身をselectedに.
            }
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(tabItem: .reader, selected: .constant(.reader))
    }
}
