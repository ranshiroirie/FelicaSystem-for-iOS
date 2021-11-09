//
//  ReaderInfoView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/07.
//

import SwiftUI

struct ReaderInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0){
                HStack{
                    Button{
                        self.presentationMode.wrappedValue.dismiss()
                    }label:{
                        Image("back_arrow")
                            .padding(16.0)
                    }
                    Spacer()
                    Button{
                        
                    }label:{
                        Image("menu_icon")
                            .padding(16.0)
                    }
                }
                .padding(.horizontal, 16.0)
                VStack(spacing: 16.0){
                    DeviceCardView()
                    HistoryCardView()
                    Spacer(minLength: 80.0)
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ReaderInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ReaderInfoView()
    }
}
