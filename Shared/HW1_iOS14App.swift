//
//  HW1_iOS14App.swift
//  Shared
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

@main
struct HW1_iOS14App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(
                StoreProvider<TabState, TabAction>().getStore()
            )
        }
    }
}
