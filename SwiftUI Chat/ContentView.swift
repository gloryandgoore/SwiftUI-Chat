//
//  ContentView.swift
//  SwiftUI Chat
//
//  Created by Caseyann Goore on 2022-08-29.
//

import SwiftUI

// let's create a structure that will represent each message in chat
struct ChatMessage : Hashable {
    var message: String
    var avatar: String
}

struct ContentView : View {
    
    // let's add some dummy values to the messages
    // suppose, there are only two messages in the chat room sent by two users: A and B
    // A sent "Hello world" with a red message bubble color
    // B sent "Hi" with a blue message color
    var messages = [
        ChatMessage(message: "Hello world", avatar: "A"),
        ChatMessage(message: "Hi", avatar: "B")
    ]
    
    var body: some View {
      
        // I've removed the text line from here and replaced it with a list
        // List is the way you should create any list in SwiftUI
        List {
            // we have several messages so we use the For Loop
            ForEach(messages, id: \.self) { msg in
                Group {
                    Text(msg.avatar)
                    Text(msg.message)
                 // then we just show the avatars of the users and their messages
                 // by using these two Text functions
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
