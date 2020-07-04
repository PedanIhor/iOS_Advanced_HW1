//
//  FirstTab.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct FirstTab: View {
    @EnvironmentObject var store: Store<TabState, TabAction>
    @State private var pickerSelection: Int = 0
    
    var body: some View {
        VStack {
            Picker.init("Select", selection: $pickerSelection) {
                ForEach(0 ..< store.state.listDataSource.count) { index in
                    return Text("\(index)").tag(index)
                }
            }.labelsHidden()
            Button.init("Open list item") {
                store.dispatch(.openListTabDetails(index: pickerSelection))
            }
        }
        .tabItem {
            Label(
                title: { Text("Navigation") },
                icon: { Image(systemName: "arrowshape.bounce.right") }
            )
        }
    }
}

struct FirstTab_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            FirstTab()
        }
    }
}

