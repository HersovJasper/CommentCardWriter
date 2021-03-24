//
//  RootTabView.swift
//  CommentCardWriter
//
//  Created by Hersov, Jasper (HWTA) on 24/03/2021.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            CommentView()
                .tabItem {
                    Image(systemName: "text.book.closed")
                    Text("My Comments")
                }
            CommentMakerView()
                .tabItem {
                    Image(systemName: "plus.bubble")
                    Text("Comment Maker")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
