//
//  CounterView.swift
//  TCA_tutorial
//
//  Created by 황성진 on 3/14/24.
//

import ComposableArchitecture
import SwiftUI

struct CounterView: View {
    let store: StoreOf<CounterFeature>
    
    var body: some View {
        VStack {
            Text("\(store.count)")
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            
            HStack {
                Button("-") {
                    store.send(.decrementButtonTapped)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
                
                Button("+") {
                    store.send(.incrementButtonTapped)
                }
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    CounterView(
        store: Store(initialState: CounterFeature.State()) {
            CounterFeature()
        }
    )
}
