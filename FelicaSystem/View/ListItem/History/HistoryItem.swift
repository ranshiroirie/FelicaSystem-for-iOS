//
//  HistoryItem.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct HistoryItem: View {
    var body: some View {
        HStack{
            VStack{
                Text("09/07")
                    .font(.caption)
                Text("22:57")
                    .font(.caption)
            }
            Image("activity_icon")
            VStack(alignment: .leading){
                Text("データベース操作")
                    .fontWeight(.bold)
                Text("操作端末や場所")
                    .font(.caption)
            }
        }
    }
}

struct HistoryItem_Previews: PreviewProvider {
    static var previews: some View {
        HistoryItem()
    }
}
