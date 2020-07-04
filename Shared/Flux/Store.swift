//
//  Store.swift
//  HW1_iOS14
//
//  Created by Ihor Pedan on 02.07.2020.
//

import Combine
import SwiftUI

final class Store<State, Action>: ObservableObject {
    
    typealias Reducer = (inout State, Action) -> Void
    
    private let reducer: Reducer
    
    @Published var state: State
    
    init(initialState: State, reducer: @escaping Reducer) {
        state = initialState
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
    }
}
