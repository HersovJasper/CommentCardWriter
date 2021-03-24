//
//  GroupOfComments.swift
//  CommentCardWriter
//
//  Created by Hersov, Jasper (HWTA) on 22/03/2021.
//

import Foundation

class GroupOfComments {
    let date: Date
    var comments: [Comment] = []
    
    init(date: Date){
        self.date = Date()
    }
    
    #if DEBUG
    static func createGroupOfComments(date: Date, of size: Int = 3) -> GroupOfComments{
        let groupOfComments = GroupOfComments(date: date)
        let exampleSubjectsAndCodes: [(String,String)] = [("Maths","MCW-1"),("Computer Science","vCX-1"),("Physics","pCZ-1"),("Biology","bCA-1"),("Chemistry","cCB-1"),("English","eCY-1"),("Spanish","sCV-1"),("French","fCU-1")]
        
        for i in 0...size-1{
            let comment = Comment(subject: exampleSubjectsAndCodes[i].0, code: exampleSubjectsAndCodes[i].1, effort: Int.random(in: 1...5), enjoyment: Int.random(in: 1...5))
            groupOfComments.comments.append(comment)
        }
        
        return groupOfComments
    }
    
    //static means accessible at the class level - don't require the class to be instantiated to access these
    static let examples = [GroupOfComments.createGroupOfComments(date: Date()),
                           GroupOfComments.createGroupOfComments(date: Date() - 3600*24*31),
                           GroupOfComments.createGroupOfComments(date: Date() - 3600*24*120)]
    #endif
}
