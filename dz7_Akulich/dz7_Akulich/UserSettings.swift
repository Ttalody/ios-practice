//
//  UserSettings.swift
//  dz7_Akulich
//
//  Created by Артур on 11.01.2024.
//

import UIKit

final class UserSettings {
    
    static let shared = UserSettings()
    
    var nickname: String
    var avatarName: String
    
    init() {
        self.nickname = "No nickname"
        self.avatarName = "No avatar"
    }
    
    init(nickname: String, avatarName: String){
        self.nickname = nickname
        self.avatarName = avatarName
    }
}
