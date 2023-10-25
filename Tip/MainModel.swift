//
//  MainModel.swift
//  Tip
//
//  Created by Anastasia Grey on 2023/10/25.
//

import Foundation
import SwiftUI

struct MainCollection: Identifiable, RandomAccessCollection {
    let headerTitle: String
    let collections: [Collection]
    let id = UUID()
}
