//
//  DatabaseCardView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct DatabaseCardView: View {
    @State private var isOnline = true
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading){
                    Text("データベース名")
                        .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                        .font(.caption)
                    Text("DATABASE NAME")
                        .fontWeight(.medium)
                        .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                HStack(alignment: .bottom,spacing: 16.0){
                    VStack(alignment: .leading, spacing: 16.0){
                        VStack(alignment: .leading){
                            Text("IPアドレス")
                                .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                                .font(.caption)
                            Text("XXX.XXX.XXX.XXX")
                                .fontWeight(.bold)
                                .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                                .font(.footnote)
                                .lineLimit(1)
                        }
                        VStack(alignment: .leading){
                            Text("最終更新")
                                .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                                .font(.caption)
                            Text("YYYY-MM-DD HH:MM")
                                .fontWeight(.bold)
                                .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                                .font(.footnote)
                                .lineLimit(1)
                        }
                    }
                    VStack(alignment: .leading){
                        Text("ステータス")
                            .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                            .font(.caption)
                        Text(isOnline == true ? "オンライン" : "オフライン")
                            .fontWeight(.bold)
                            .foregroundColor(isOnline == true ? Color.white : Color("colorTextOffline"))
                            .font(.footnote)
                            .lineLimit(1)
                    }
                    Spacer()
                    Button{
                        self.isOnline.toggle()
                    }label:{
                        Image("update_icon")
                    }
                    .padding(12.0)
                    .background(Color("colorCardView"))
                    .cornerRadius(24.0)
                    .shadow(radius: 8.0)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .padding(16.0)
            .background(isOnline == true ? Color("colorPinkPrimary") : Color("colorCardOffline"))
            .cornerRadius(16.0)
            .shadow(radius: 8.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct DatabaseCardView_Previews: PreviewProvider {
    static var previews: some View {
        DatabaseCardView()
    }
}

//class colorDarabaseCardFont : Color {
//    
//}
