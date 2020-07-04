//
//  ModalTab.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 01.07.2020.
//

import SwiftUI

struct ModalState {
    var isModallyPresented: Bool
}

enum ModalAction {
    case showModal
}

struct ModalTab: View {
    @StateObject var store: Store<ModalState, ModalAction>
    
    var body: some View {
        Button("Present Modal") {
            store.dispatch(.showModal)
        }
        .fullScreenCover(isPresented: $store.state.isModallyPresented, content: {
            ModalView()
        })
        .tabItem {
            Label(
                title: { Text("Modal") },
                icon: { Image(systemName: "capslock") }
            )
        }
    }
}

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Modal View")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

//struct ModalTab_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalTab(store: <#Store<ModalState, ModalAction>#>)
//    }
//}
