//
//  ContactsFeature.swift
//  TCA_tutorial
//
//  Created by 황성진 on 3/14/24.
//

import Foundation
import ComposableArchitecture

struct Contact: Equatable, Identifiable {
    let id: UUID
    var name: String
}


@Reducer
struct ContactsFeature {
    @ObservableState
    struct State: Equatable {
        var contacts: IdentifiedArrayOf<Contact> = []
        @Presents var destination: Destination.State?
    }
    enum Action {
        case addButtonTapped
        case deleteButtonTapped(id: Contact.ID)
        case destination(PresentationAction<Destination.Action>)
        enum Alert: Equatable {
            case confirmDeletion(id: Contact.ID)
        }
    }
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .addButtonTapped:
                state.destination = .addContact(
                    AddContactFeature.State(
                        contact: Contact(id: UUID(), name: "")
                    )
                )
                return .none
                
            case let .destination(.presented(.addContact(.delegate(.saveContact(contact))))):
                state.contacts.append(contact)
                return .none
                
            case let .destination(.presented(.alert(.confirmDeletion(id: id)))):
                state.contacts.remove(id: id)
                return .none
                
            case .destination:
                return .none
                
            case let .deleteButtonTapped(id: id):
                state.destination = .alert(
                    AlertState {
                        TextState("Are you sure?")
                    } actions: {
                        ButtonState(role: .destructive, action: .confirmDeletion(id: id)) {
                            TextState("Delete")
                        }
                    }
                )
                return .none
            }
        }
        .ifLet(\.$destination, action: \.destination)
    }
}

extension ContactsFeature {
    @Reducer(state: .equatable)
    enum Destination {
        case addContact(AddContactFeature)
        case alert(AlertState<ContactsFeature.Action.Alert>)
    }
}
