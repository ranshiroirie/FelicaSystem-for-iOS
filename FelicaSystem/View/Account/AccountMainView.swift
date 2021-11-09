//
//  AccountMainView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct AccountMainView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 0){
                HStack{
                    Spacer()
                    Button{
                        
                    }label:{
                        Image("menu_icon")
                            .padding(16.0)
                    }
                }
                .padding(.horizontal, 16.0)
                VStack(spacing: 16.0){
                    AccountCardView()
                    DeviceListCardView()
                    VStack{
                        Button{
                            
                        }label:{
                            Text("パスワードを変更する")
                                .font(.headline)
                                .foregroundColor(Color("textcolor_main"))
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .padding(16.0)
                        }
                    }
                    .background(Color("colorCardView"))
                    .cornerRadius(32.0)
                    .shadow(radius: 8.0)
                    .padding(.horizontal,16.0)
                    VStack{
                        Button{
                            
                        }label:{
                            Text("ログアウト")
                                .font(.headline)
                                .foregroundColor(Color("colorPinkPrimary"))
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                .padding(16.0)
                        }
                    }
                    .background(Color("colorCardView"))
                    .cornerRadius(32.0)
                    .shadow(radius: 8.0)
                    .padding(.horizontal,16.0)
                    Spacer(minLength: 80.0)
                }
            }
        }
    }
}

struct AccountMainView_Previews: PreviewProvider {
    static var previews: some View {
        AccountMainView()
    }
}
