//
//  ContactDetailView.swift
//  TCA_tutorial
//
//  Created by 황성진 on 3/14/24.
//

import SwiftUI
import ComposableArchitecture

struct ContactDetailView: View {
    @Bindable var store: StoreOf<ContactDetailFeature>

    var body: some View {
        Form {
            Button("Delete") {
              store.send(.deleteButtonTapped)
            }
        }
        .navigationTitle(Text(store.contact.name))
        .alert($store.scope(state: \.alert, action: \.alert))
    }
}

#Preview {
    NavigationStack {
        ContactDetailView(
            store: Store (initialState: ContactDetailFeature.State(
                contact: Contact(id: UUID(), name: "SungJin")
            )
            ) {
                ContactDetailFeature()
            }
        )
    }
}
