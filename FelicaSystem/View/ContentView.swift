//
//  ContentView.swift
//  FelicaSystem
//
//  Created by 入江嵐士郎 on 2021/11/06.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .reader
    
    var body: some View {
        TabView(selection: $selection) {
            ReaderInfoView()
                .tabItem{
                    let tabReader : Tab = .reader
                    Text(tabReader.label)
                        .foregroundColor(Color(selection == tabReader ? tabReader.activeColor : "textcolor_main" ))
                    Image(selection == tabReader ? tabReader.activeImage : tabReader.disactiveImage)
                        .padding(.vertical,8.0)
                }
                .tag(Tab.reader)
            
            DatabaseMainView()
                .tabItem{
                    let tabDatabase : Tab = .database
                    Text(tabDatabase.label)
                        .foregroundColor(Color(selection == tabDatabase ? tabDatabase.activeColor : "textcolor_main" ))
                    Image(selection == tabDatabase ? tabDatabase.activeImage : tabDatabase.disactiveImage)
                        .padding(.vertical,8.0)
                }
                .tag(Tab.database)
            AccountMainView()
                .tabItem{
                    let tabAccount : Tab = .account
                    Text(tabAccount.label)
                        .foregroundColor(Color(selection == tabAccount ? tabAccount.activeColor : "textcolor_main" ))
                    Image(selection == tabAccount ? tabAccount.activeImage : tabAccount.disactiveImage)
                        .padding(.vertical,8.0)
                }
                .tag(Tab.account)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab {
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
