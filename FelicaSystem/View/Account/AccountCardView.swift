//
//  AccountCardView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/09.
//

import SwiftUI

struct AccountCardView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading){
                    Text("アカウント名")
                        .foregroundColor(Color.white)
                        .font(.caption)
                    Text("ACCOUNT NAME")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                VStack(alignment: .leading,spacing: 16.0){
                    VStack(alignment: .leading){
                        Text("アカウントID")
                            .foregroundColor(Color.white)
                            .font(.caption)
                        Text(verbatim:"abcdef@123.com")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.footnote)
                            .lineLimit(1)
                    }
                    HStack{
                        VStack(alignment: .leading){
                            Text("種別")
                                .foregroundColor(Color.white)
                                .font(.caption)
                            Text("Admin")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.footnote)
                                .lineLimit(1)
                        }
                        Spacer()
                        VStack(alignment: .leading){
                            Text("登録日時")
                                .foregroundColor(Color.white)
                                .font(.caption)
                            Text("YYYY-MM-DD HH:MM")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.footnote)
                                .lineLimit(1)
                        }
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .padding(16.0)
            .background(Color("colorBluePrimary"))
            .cornerRadius(16.0)
            .shadow(radius: 8.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct AccountCardView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCardView()
    }
}
