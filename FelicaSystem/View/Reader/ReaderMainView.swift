//
//  ReaderMainVIew.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/06.
//

import SwiftUI

struct ReaderMainView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                Spacer()
                    .frame(height: 60.0)
                Text("ICカードやFelicaデバイスを\n読み取り位置にかざしてください")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("textcolor_main"))
                    .lineSpacing(CGFloat(2.0))
                    .multilineTextAlignment(.center)
                NavigationLink{
                    ReaderInfoView()
                }label:{
                    Image("announce_felica_device_read")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200.0)
                }
                Text("機種によって読み取り位置は異なります")
                    .font(.subheadline)
                    .foregroundColor(Color("textcolor_main"))
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ReaderMainView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderMainView()
    }
}
