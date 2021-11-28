//
//  FelicaSystemService.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/22.
//

import Foundation

class FelicaSystemService{
    let baseURL: URL = URL(string: "http://192.168.3.18:8080/")!
    let decoder = JSONDecoder()
    
    init(){
        self.decoder.dateDecodingStrategy = .formatted(.iso8601Full)
    }
    
    
    func getFelicaDeviceList(res: @escaping([FelicaDevice])->()){
        URLSession.shared.dataTask(with: appendUrl(addPath: "felica_device/get/all")){data, response, error in
            let result = try!
            self.decoder.decode([FelicaDevice].self, from: data!)
            DispatchQueue.main.async {
                res(result)
            }
        }.resume()
    }
    
    private func appendUrl(addPath:String)->URL{
        return baseURL.appendingPathComponent(addPath, isDirectory: true)
    }
}
