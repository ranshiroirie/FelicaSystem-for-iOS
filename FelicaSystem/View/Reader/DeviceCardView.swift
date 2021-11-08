//
//  DeviceCardView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct DeviceCardView: View {
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16.0) {
                VStack(alignment: .leading){
                    Text("機器名")
                        .foregroundColor(Color.white)
                        .font(.caption)
                    Text("DEVICE NAME")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                HStack(spacing: 16.0){
                    VStack(alignment: .leading, spacing: 16.0){
                        VStack(alignment: .leading){
                            Text("ID")
                                .foregroundColor(Color.white)
                                .font(.caption)
                            Text("XXXXXXXXXXXXXXXX")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.footnote)
                                .lineLimit(1)
                        }
                        VStack(alignment: .leading){
                            Text("SYS")
                                .foregroundColor(Color.white)
                                .font(.caption)
                            Text("XXXX")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.footnote)
                                .lineLimit(1)
                        }
                    }
                    VStack(alignment: .leading, spacing: 16.0) {
                        VStack(alignment: .leading){
                            Text("PMM")
                                .foregroundColor(Color.white)
                                .font(.caption)
                            Text("XXXXXXXXXXXXXXXX")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .font(.footnote)
                                .lineLimit(1)
                        }
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
            .background(Color("colorGreenPrimary"))
            .cornerRadius(16.0)
            .shadow(radius: 8.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct DeviceCardView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceCardView()
    }
}
