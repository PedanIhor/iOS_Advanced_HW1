//
//  ContentView.swift
//  Shared
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct TabState {
    var selectedTab: Int
    var showingDetails: Int?
    var listDataSource = (0 ..< 100).map { Item(id: $0) }
}

enum TabAction {
    case openListTabDetails(index: Int)
}


struct ContentView: View {
    @EnvironmentObject var store: Store<TabState, TabAction> 
        
    var body: some View {
        TabView(selection: $store.state.selectedTab) {
            FirstTab().tag(0)
            ListTab().tag(1)
            ModalTab(store: StoreProvider<ModalState, ModalAction>().getStore()).tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
