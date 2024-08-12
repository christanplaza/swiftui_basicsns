//
//  User.swift
//  BasicSNS
//
//  Created by mbp on 8/12/24.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    var id: String
    var username: String
    var bio: String
    var profileImage: Image?
}
