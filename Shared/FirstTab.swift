//
//  FirstTab.swift
//  HM1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct FirstTab: View {
    var body: some View {
        Button("Go to List index 4 Details", action: {
            print("Go")
        })
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

