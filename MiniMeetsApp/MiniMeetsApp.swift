//
//  MiniMeetsAppApp.swift
//  MiniMeetsApp
//
//  Created by Ibraiz Qazi on 01/01/2024.
//
import ComposableArchitecture
import SwiftUI

@main
struct StandupsApp: App {
    var body: some Scene {
        WindowGroup {
            var editedStandup = Standup.mock
            let _ = editedStandup.title += " Morning Sync"
            
            AppView(
                store: Store(
                    initialState: AppFeature.State(
                        standupsList: StandupsListFeature.State()
                    )
                ) {
                    AppFeature()
                        ._printChanges()
                }
            )
        }
    }
}
