//
//  Match.swift
//  target-app
//
//  Created by Andres Leonel Torrico Cossio on 19/10/2022.
//

import Foundation

struct Match: Codable {
    let matchID: Int
    let topicIcon: String
    let lastMessage: String?
    let unreadMessages: Int
    let user: User

    enum CodingKeys: String, CodingKey {
        case matchID = "match_id"
        case topicIcon = "topic_icon"
        case lastMessage = "last_message"
        case unreadMessages = "unread_messages"
        case user
    }
}
