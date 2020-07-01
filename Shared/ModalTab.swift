//
//  ModalTab.swift
//  HM1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ModalTab: View {
    var body: some View {
        Button("Present Modal") {
            print("Present Modal")
        }
        .tabItem {
            Label(
                title: { Text("Modal") },
                icon: { Image(systemName: "capslock") }
            )
        }
    }
}

struct ModalTab_Previews: PreviewProvider {
    static var previews: some View {
        ModalTab()
    }
}
