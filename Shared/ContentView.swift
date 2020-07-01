//
//  ContentView.swift
//  Shared
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FirstTab().tag(0)
            ListTab().tag(1)
            ModalTab().tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
