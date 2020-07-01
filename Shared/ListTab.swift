//
//  ListTab.swift
//  HM1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ListTab: View {
    var body: some View {
        NavigationView {
            List(0..<100) { i in
                NavigationLink("Item \(i)",
                               destination: Text("Details for item \(i)")
                                .padding()
                                .font(.largeTitle)
                                .navigationTitle("Item \(i)")
                )
            }
            .navigationTitle("List")
        }
        .tabItem {
            Label(
                title: { Text("List") },
                icon: { Image(systemName: "list.number") }
)
        }
    }
}

struct ListTab_Previews: PreviewProvider {
    static var previews: some View {
        ListTab()
    }
}
