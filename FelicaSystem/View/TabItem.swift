//
//  TabItem.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/08.
//

import Foundation

enum TabItem : CaseIterable{
    case reader
    case database
    case account
    
    var label: String {
        switch self {
        case .reader: return "読み取り"
        case .database: return "データベース"
        case .account: return "アカウント"
        }
    }
    
    var activeColor: String {
        switch self {
        case .reader: return "colorGreenPrimary"
        case .database: return "colorPinkPrimary"
        case .account: return "colorBluePrimary"
        }
    }
    
    var activeImage: String {
        switch self {
        case .reader: return "tab_reader_active"
        case .database: return "tab_database_active"
        case .account: return "tab_account_active"
        }
    }
    
    var disactiveImage: String {
        switch self {
        case .reader: return "tab_reader_disactive"
        case .database: return "tab_database_disactive"
        case .account: return "tab_account_disactive"
        }
    }
}
