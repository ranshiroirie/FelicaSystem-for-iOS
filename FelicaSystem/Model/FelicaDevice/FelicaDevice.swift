//
//  FelicaDevice.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/22.
//

import Foundation

struct FelicaDevice: Codable, Identifiable{
    var id: Int
    
    let device_name: String
    let card_id: String
    let card_pmm: String
    let card_sys: String
    let registered_datetime: Date
    
    enum CodingKeys: String, CodingKey{
        case id = "felica_id"
        case device_name = "device_name"
        case card_id = "card_id"
        case card_pmm = "card_pmm"
        case card_sys = "card_sys"
        case registered_datetime = "registered_datetime"
    }
    
}
