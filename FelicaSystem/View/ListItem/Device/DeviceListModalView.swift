//
//  DeviceListModalView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/22.
//

import SwiftUI

struct DeviceListModalView: View {
    @ObservedObject var repoFelicaDevice = FelicaDeviceRepository()
    var body: some View {
        VStack{
            List(repoFelicaDevice.data){item in
                VStack(alignment: .leading){
                    Text("\(item.device_name)")
                        .bold()
                    Text("\(item.card_id)")
                    Text("\(item.card_pmm)")
                    Text("\(item.card_sys)")
                    Text("\(item.registered_datetime)")
                }
            }
        }
    }
}

struct DeviceListModalView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceListModalView()
    }
}
