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
    var finalComment: String

    static func generateComment(_ subject: String,_ effort: Int,_ enjoyment: Int) -> String{
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
            enjoymentString = "although I haven't enjoyed lessons at all"
        case 2:
            enjoymentString = "although I have seldom enjoyed lessons"
        case 3:
            enjoymentString = "and I have enjoyed most lessons"
        case 4:
            enjoymentString = "and I have really been enjoying lessons"
        case 5:
            enjoymentString = "and I have enjoyed every single lesson we have had"
        default:
            enjoymentString = "and lessons have been enjoyable"
        }
        let finalString = "\(subject) is interesting as always, \(enjoymentString). My effort in this subject has been \(effortString)."
        
        return finalString
    }
    
    init(subject: String, code: String, effort: Int, enjoyment: Int){
        self.subject = subject
        self.code = code
        self.effort = effort
        self.enjoyment = enjoyment
        self.finalComment = Comment.generateComment(subject,effort,enjoyment)
    }
}
