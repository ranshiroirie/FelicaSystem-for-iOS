//
//  FelicaDeviceInterface.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/22.
//

import Foundation

protocol FelicaDeviceInterface {
    
    //@GET("felica_device/get/all")
    func getList()
    
//    //@GET("felica_device/get/card_info")
//    func getByCardInfo(
//        card_id: String,
//        card_pmm: String,
//        card_sys: String
//    ) -> FelicaDevice
//    
//    //@GET("felica_device/get/felica_id")
//    func getById(
//        felica_id: Int
//    ) -> FelicaDevice
//    
//    //@POST("felica_device/add")
//    func create(
//        device_name: String,
//        card_id: String,
//        card_pmm: String,
//        card_sys: String,
//        operation_device: String
//    ) -> FelicaDevice
//    
//    //@PUT("felica_device/update/device_name")
//    func updateNameById(
//        felica_id: Int,
//        device_name: String,
//        operation_device: String
//    ) -> FelicaDevice
//    
//    //@DELETE("felica_device/delete/felica_id")
//    func deleteById(
//        felica_id: Int,
//        operation_device: String
//    )
}
