//
//  TVSeries.swift
//  FamilyHouse
//
//  Created by Alexey Medvedev on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum TVSeries {
    case familyMatters, fullHouse
    var description: String {
        if self == .familyMatters { return "Family Matters" } else { return "Full House" }
    }
}
