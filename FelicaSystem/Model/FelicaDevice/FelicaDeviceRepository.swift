//
//  FelicaDeviceRepository.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/22.
//

import Foundation

class FelicaDeviceRepository: FelicaDeviceInterface, ObservableObject{
    @Published var data = [FelicaDevice]()
    init(){
        self.getList()
    }
    
    func getList(){
        FelicaSystemService().getFelicaDeviceList{data in
            self.data = data
        }
    }
    
    
}
