//
//  DeviceListCardView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct DeviceListCardView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading){
                    Text("最近登録された機器")
                        .fontWeight(.medium)
                        .font(.title2)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                VStack(spacing: 12.0){
                    ForEach(0..<3){_ in
                        DeviceListItem()
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                VStack{
                    Button{
                        
                    }label:{
                        Text("全ての登録機器を見る")
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

struct DeviceListCardView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceListCardView()
    }
}
