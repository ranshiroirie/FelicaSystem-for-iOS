//
//  DatabaseMainView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct DatabaseMainView: View {
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
                    DatabaseCardView()
                    DeviceListCardView()
                    HistoryCardView()
                    Spacer(minLength: 80.0)
                }
            }
        }
    }
}

struct DatabaseMainView_Previews: PreviewProvider {
    static var previews: some View {
        DatabaseMainView()
    }
}
