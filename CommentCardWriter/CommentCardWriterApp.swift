//
//  CommentCardWriterApp.swift
//  CommentCardWriter
//
//  Created by Hersov, Jasper (HWTA) on 12/03/2021.
//

import SwiftUI

@main
struct CommentCardWriterApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
