//
//  ListTab.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ListTab: View {
    @EnvironmentObject var store: Store<TabState, TabAction>
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<store.state.listDataSource.count) { index in
                    ItemLink(selection: $store.state.showingDetails, index: index)
                }
            }
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
        NavigationLink(
            destination: Text("Details for item \(index)")
                .padding()
                .font(.largeTitle)
                .navigationTitle("Item \(index)"),
            tag: index,
            selection: $selection,
            label: {
                VStack {
                    HStack {
                        Text("Item \(index)")
                            .padding(.leading, 16)
                            .accentColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(.trailing, 16)
                            .accentColor(.gray)
                    }
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 1)
                        .accentColor(Color.init(white: 0.8, opacity: 0.7))
                }
            }
        )
    }
}
