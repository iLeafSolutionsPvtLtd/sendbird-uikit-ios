//
//  SBUStringSet.swift
//  SendbirdUIKit
//
//  Created by Tez Park on 05/03/2020.
//  Copyright © 2020 Sendbird, Inc. All rights reserved.
//

import UIKit
import SendbirdChatSDK

public class SBUStringSet {
    // MARK: - Common
    public static var Cancel = "Cancel"
    public static var OK = "OK"
    public static var Retry = "Retry"
    public static var Save = "Save"
    public static var Copy = "Copy"
    public static var Delete = "Delete"
    public static var Edit = "Edit"
    public static var Remove = "Remove"
    public static var Camera = "Camera"
    public static var PhotoVideoLibrary = "Photo library"
    public static var Document = "Files"
    public static var Loading = "Loading..."
    public static var Invite = "Invite"
    public static var TakePhoto = "Take photo"
    public static var ChoosePhoto = "Choose photo"
    public static var RemovePhoto = "Remove photo"
    public static var ViewLibrary = "View library"
    public static var Search = "Search"
    public static var Settings = "Settings"
    public static var Reply = "Reply"
    
    // MARK: - Alert
    public static var Alert_Delete = "Are you sure you want to delete?"
    public static var Alert_Allow_PhotoLibrary_Access = "Please Allow PhotoLibrary Access"
    public static var Alert_Allow_PhotoLibrary_Access_Message = "PhotoLibrary access required to get your photos and videos"

    // MARK: - Date Format
    public static var Date_Yesterday = "Yesterday"
    public static var Date_Year: (Int) -> String = { interval in
        return String(format :"%lld%@", interval, (interval>1) ? "years" : "year")
    }
    public static var Date_Day: (Int) -> String = { interval in
        return String(format :"%lld%@", interval, (interval>1) ? "days" : "day")
    }
    public static var Date_Month: (Int) -> String = { interval in
        return String(format :"%lldmonth", interval)
    }
    public static var Date_Hour: (Int) -> String = { interval in
        return String(format :"%lldh", interval)
    }
    public static var Date_Min: (Int) -> String = { interval in
        return String(format :"%lldm", interval)
    }
    public static var Date_Ago = "ago"
    public static var Date_On = "on"


    // MARK: - Channel List
    public static var ChannelList_Header_Title = "Channels"
    public static var ChannelList_Last_File_Message = "uploaded a file."


    // MARK: - Channel
    public static var Channel_Name_Default = "Group Channel"
    public static var Channel_Name_No_Members = "(No members)"
    public static var Channel_Header_LastSeen = "Last seen"
    
    @available(*, deprecated, renamed: "Channel_Typing") // 3.0.0
    public static var Channel_Header_Typing: ([User]) -> String {
        { Channel_Typing($0) }
    }
    
    public static var Channel_Typing: ([User]) -> String = { members in
        switch members.count {
        case 1:
            let nickname = !members[0].nickname.isEmpty ? members[0].nickname : "Member"
            return String(format: "%@ is typing...", nickname)
        case 2:
            let nickname1 = !members[0].nickname.isEmpty ? members[0].nickname : "Member"
            let nickname2 = !members[1].nickname.isEmpty ? members[1].nickname : "Member"
            return String(format: "%@ and %@ are typing...", nickname1, nickname2)
        default:
            return "Several people are typing..."
        }
    }
    public static var Channel_Success_Download_file = "File saved."
    public static var Channel_Failure_Download_file = "Couldn’t download file."
    public static var Channel_Failure_Open_file = "Couldn’t open file."
    public static var Channel_New_Message_File = "uploaded a file"
    public static var Channel_New_Message: (Int) -> String = { count in
        switch count {
        case 1:
            return "1 new message"
        case 2...99:
            return "\(count) new messages"
        case 100...:
            return "99+ new messages"
        default:
            return ""
        }
    }
    public static var Channel_State_Banner_Frozen = "Channel frozen"
    
    
    // MARK: - Open Channel
    public static var Open_Channel_Name_Default = "Open Channel"
    public static var Open_Channel_Participants = "Participants"
    public static var Open_Channel_Participants_Count: (Int) -> String = { count in
        switch count {
        case 1:
            return "1 participant"
        default:
            return "\(count) participants"
        }
    }


    // MARK: - Channel Setting
    public static var ChannelSettings_Header_Title = "Channel information"
    public static var ChannelSettings_Change_Name = "Change name"
    public static var ChannelSettings_Change_Image = "Change channel image"
    public static var ChannelSettings_Enter_New_Name = "Enter name"
    public static var ChannelSettings_Enter_New_Channel_Name = "Enter channel name"
    public static var ChannelSettings_Notifications = "Notifications"
    public static var ChannelSettings_Notifications_On = "On"
    public static var ChannelSettings_Notifications_Off = "Off"
    public static var ChannelSettings_Notifications_Mentiones_Only = "Mentions only"
    
    public static var ChannelSettings_Members_Title = "Members"
    public static var ChannelSettings_Participants_Title = "Participants"
    public static var ChannelSettings_Members: (UInt) -> String = { count in
        switch count {
        case 0:
            return "members"
        default:
            return "\(count) members"
        }
    }
    public static var ChannelSettings_Leave = "Leave channel"
    public static var ChannelSettings_Delete = "Delete channel"
    public static var ChannelSettings_Delete_Question_Mark = "Delete channel?"
    public static var ChannelSettings_Delete_Description = "Once deleted, this channel can't be restored."
    public static var ChannelSettings_Search = "Search in channel"
    
    public static var ChannelSettings_Moderations = "Moderations"
    public static var ChannelSettings_Operators = "Operators"
    public static var ChannelSettings_Muted_Members = "Muted members"
    public static var ChannelSettings_Muted_Participants = "Muted participants" // 3.0.0
    public static var ChannelSettings_Banned_Users = "Banned users"
    public static var ChannelSettings_Freeze_Channel = "Freeze channel"
    
    public static var ChannelSettings_URL = "URL"

    
    // MARK: Channel push settings
    public static var ChannelPushSettings_Header_Title = "Notifications"
    public static var ChannelPushSettings_Notification_Title = "Notifications"
    public static var ChannelPushSettings_Item_All = "All new messages"
    public static var ChannelPushSettings_Item_Mentions_Only = "Mentions only"
    public static var ChannelPushSettings_Notification_Description = "Turn on push notifications if you wish to be notified when messages are delivered to this channel."
    
    

    // MARK: - Message Input
    public static var MessageInput_Text_Placeholder = "Type a message"
    public static var MessageInput_Text_Unavailable = "Chat is unavailable in this channel"
    public static var MessageInput_Text_Muted = "You are muted"
    public static var MessageInput_Text_Reply = "Reply to message"
    public static var MessageInput_Reply_To: (String) -> String = { quotedMessageNickname in
        return "Reply to \(quotedMessageNickname)"
    }
    public static var MessageInput_Quote_Message_Photo = "Photo"
    public static var MessageInput_Quote_Message_GIF = "GIF"
    public static var MessageInput_Quote_Message_Video = "Video"

    // MARK: - Message
    public static var Message_Edited = "(edited)"
    public static var Message_System = "System message"
    public static var Message_Unknown_Title = "(Unknown message type)"
    public static var Message_Unknown_Description = "Cannot read this message."
    public static var Message_Replied_To: (String, String) -> String = { replierNickname, quotedMessageNickname in
        return "\(replierNickname) replied to \(quotedMessageNickname)"
    }
    public static var Message_You = "You"


    // MARK: - Empty
    public static var Empty_No_Channels = "No channels"
    public static var Empty_No_Messages = "No messages"
    public static var Empty_No_Users = "No users"
    public static var Empty_No_Muted_Members = "No muted members"
    public static var Empty_No_Muted_Participants = "No muted participants"
    public static var Empty_No_Banned_Users = "No banned users"
    public static var Empty_Search_Result = "No results found"
    public static var Empty_Wrong = "Something went wrong"


    // MARK: - Create Channel
    public static var CreateChannel_Create: (Int) -> String = { count in
        switch count {
        case 0:
            return "Create"
        default:
            return "Create \(count)"
        }
    }
    public static var CreateChannel_Header_Title = "New Channel"
    public static var CreateChannel_Header_Select_Members = "Select members"
    public static var CreateChannel_Header_Title_Profile = "New channel profile"

    // MARK: - Invite Channel
    public static var InviteChannel_Header_Title = "Invite users"
    public static var InviteChannel_Header_Select_Users = "Select users"
    public static var InviteChannel_Invite: (Int) -> String = { count in
        switch count {
        case 0:
            return "Invite"
        default:
            return "Invite \(count)"
        }
    }
    public static var InviteChannel_Register: (Int) -> String = { count in
        switch count {
        case 0:
            return "Register"
        default:
            return "Register \(count)"
        }
    }


    // MARK: - User List
    public static var UserList_Me = "(You)"
    public static var UserList_Ban = "Ban"
    public static var UserList_Unban = "Unban"
    public static var UserList_Mute = "Mute"
    public static var UserList_Unmute = "Unmute"
    public static var UserList_Unregister_Operator = "Unregister operator"
    public static var UserList_Register_Operator = "Register as operator"
    public static var UserList_Title_Members = "Members"
    public static var UserList_Title_Operators = "Operators"
    public static var UserList_Title_Muted_Members = "Muted members"
    public static var UserList_Title_Muted_Participants = "Muted Participants" // 3.0.0
    public static var UserList_Title_Banned_Users = "Banned users"
    public static var UserList_Title_Participants = "Participants"

    
    // MARK: - User
    public static var User_No_Name = "(No name)"
    public static var User_Operator = "Operator"
    
    
    // MARK - User profile
    public static var UserProfile_Role_Operator = "Operator"
    public static var UserProfile_Role_Member = "Member"
    public static var UserProfile_UserID = "User ID"
    public static var UserProfile_Message = "Message"
    public static var UserProfile_Register = "Register"
    public static var UserProfile_Unregister = "Unregister"
    public static var UserProfile_Mute = "Mute"
    public static var UserProfile_Unmute = "Unmute"
    public static var UserProfile_Ban = "Ban"
    
    
    // MARK: - Channel type
    public static var ChannelType_Group = "Group"
    public static var ChannelType_SuperGroup = "Super group"
    public static var ChannelType_Broadcast = "Broadcast"
    
    public class Mention {
        /// "@"
        public static let Trigger_Key: String = "@"
        
        /// e.g., "You can mention up to 10 times at a time."
        public static var Limit_Guide = "You can mention up to \(SBUGlobals.userMentionConfig?.mentionLimit ?? 10) times per message. "
    }
}

extension SBUStringSet {
    @available(*, deprecated, renamed: "InviteChannel_Register")
    public static var InviteChannel_Add: (Int) -> String = { count in
        InviteChannel_Register(count)
    }
    
}
