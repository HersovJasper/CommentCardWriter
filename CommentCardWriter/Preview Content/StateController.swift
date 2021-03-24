//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Hersov, Jasper (HWTA) on 24/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var allComments: [GroupOfComments]
    
    init() {
        allComments = GroupOfComments.examples
    }
}
