//
//  User.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/13/24.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
