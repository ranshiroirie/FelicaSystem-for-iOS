//
//  HistoryCardView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct HistoryCardView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading){
                    Text("最近のアクティビティ")
                        .fontWeight(.medium)
                        .font(.title2)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                VStack(spacing: 12.0){
                    ForEach(0..<5){_ in
                        HistoryItem()
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                VStack{
                    Button{
                        
                    }label:{
                        Text("全てのアクティビティを見る")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(16.0)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    }
                }
                .background(Color("colorCardView"))
                .cornerRadius(32.0)
                .shadow(radius: 2.0)
            }
            .padding(16.0)
            .background(Color("colorCardView"))
            .cornerRadius(16.0)
            .shadow(radius: 8.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct HistoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryCardView()
    }
}
