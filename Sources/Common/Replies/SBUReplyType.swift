//
//  SBUReplyType.swift
//  SendbirdUIKit
//
//  Created by Jaesung Lee on 2021/09/09.
//  Copyright © 2021 Sendbird, Inc. All rights reserved.
//

import Foundation
import SendbirdChatSDK

public enum SBUReplyType: Int {
    /// Doesn’t display any replies.
    case `none`
    
    /// Displays the replies on the message list
    case quoteReply
    
    @available(*, unavailable, renamed: "quoteReply")
    case thread
    
    public var filterValue: ReplyType {
        switch self {
        case .none: return .none
        default: return .all
        }
    }
    
    var includesThreadInfo: Bool { true }
    
    var includesParentMessageInfo: Bool {
        return self != .none
    }
}
