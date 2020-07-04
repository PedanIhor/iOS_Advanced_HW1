//
//  ListTab.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ListTab: View {
    @EnvironmentObject var store: Store<TabState, TabAction>
    @State var dataSource = (0 ..< 100).map { Item(id: $0) }
    
    var body: some View {
        NavigationView {
            List(dataSource, selection: $store.state.showingDetails) {
                ItemLink(selection: $store.state.showingDetails, index: $0.id)
                    .animation(nil)
            }
            .animation(nil)
            .navigationTitle("List")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .tabItem {
            Label(
                title: { Text("List") },
                icon: { Image(systemName: "list.number") }
            )
        }
    }
}

struct Item: Identifiable {
    let id: Int
}

struct ItemLink: View {
    @Binding var selection: Int?
    let index: Int
    
    var body: some View {
        NavigationLink("Item \(index)",
                       destination: Text("Details for item \(index)")
                        .padding()
                        .font(.largeTitle)
                        .navigationTitle("Item \(index)"),
                       tag: index, selection: $selection)
    }
}

//struct ListTab_Previews: PreviewProvider {
//    static var previews: some View {
//        ListTab()
//    }
//}
