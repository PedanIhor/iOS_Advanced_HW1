//
//  StoreProvider.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 04.07.2020.
//

import Foundation

struct StoreProvider<S, A> {
    func getStore() -> Store<S, A> where S == TabState, A == TabAction {
        tabStore()
    }
    
    func getStore() -> Store<S, A> where S == ModalState, A == ModalAction {
        modalStore()
    }
}

private extension StoreProvider {
    func tabStore() -> Store<TabState, TabAction> {
        Store<TabState, TabAction>(
            initialState: TabState(selectedTab: 0, showingDetails: nil)
        ) { state, action in
            switch action {
            case .openListTabDetails(index: let index):
                state.showingDetails = index
                state.selectedTab = 1
            }
        }
    }
    
    func modalStore() -> Store<ModalState, ModalAction> {
        Store<ModalState, ModalAction>(
            initialState: ModalState(isModallyPresented: false)
        ) { (state, action) in
            switch action {
            case .showModal:
                state.isModallyPresented = true
            }
        }
    }
}
