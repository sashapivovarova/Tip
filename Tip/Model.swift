//
//  Model.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/25.
//

import Foundation
import SwiftUI

struct Collection: Identifiable {
    let symbolName: String
    let symbolColor: [Color]
    let symbolTitle: String
    let id = UUID()
}
