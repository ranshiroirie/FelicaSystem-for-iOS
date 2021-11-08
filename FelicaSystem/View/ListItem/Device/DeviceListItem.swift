//
//  DeviceListItem.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct DeviceListItem: View {
    var body: some View {
        HStack{
            VStack{
                Text("09/07")
                    .font(.caption)
                Text("22:57")
                    .font(.caption)
            }
            Image("device_icon")
            VStack(alignment: .leading){
                Text("デバイス名")
                    .fontWeight(.bold)
            }
        }
    }
}

struct DeviceListItem_Previews: PreviewProvider {
    static var previews: some View {
        DeviceListItem()
    }
}
