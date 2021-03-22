//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Hersov, Jasper (HWTA) on 12/03/2021.
//

import Foundation

class Comment {
    let subject: String
    let code: String
    let effort: Int
    let enjoyment: Int
    let anticipation: String
    var finalComment: String

    static func generateComment(subject: String, effort: Int, enjoyment: Int, anticipation: String){
        let effortString: String
        let enjoymentString: String
        switch effort{
        case 1:
            effortString = "unsatisfactory"
        case 2:
            effortString = "sub-optimal"
        case 3:
            effortString = "average"
        case 4:
            effortString = "good"
        case 5:
            effortString = "excellent"
        default:
            effortString = "OK"
        }
        switch enjoyment{
        case 1:
            enjoymentString = "I haven't enjoyed lessons at all."
        case 2:
            enjoymentString = "I have seldom enjoyed lessons."
        case 3:
            enjoymentString = "I have enjoyed most lessons."
        case 4:
            enjoymentString = "I have really been enjoying lessons."
        case 5:
            enjoymentString = "I have enjoyed every single lesson we have had."
        default:
            enjoymentString = "Lessons have been enjoyable."
        }
        let finalString = "\(subject) is really fun."
    }
    
    init(subject: String, code: String, effort: Int, enjoyment: Int, anticipation: String){
        self.subject = subject
        self.code = code
        self.effort = effort
        self.enjoyment = enjoyment
        self.anticipation = anticipation
        self.finalComment = self.generateComment()
    }
}
