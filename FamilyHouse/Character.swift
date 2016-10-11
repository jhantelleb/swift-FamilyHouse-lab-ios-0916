//
//  Character.swift
//  FamilyHouse
//
//  Created by Alexey Medvedev on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

struct Character {
    let name: String
    let realLifeName: String
    let tvSeries: TVSeries
    var currentLocation: FilmLocation
    let image: UIImage!
    
    func canReportToSet(on location: FilmLocation) -> Bool {
        return self.currentLocation.tvSeries == location.tvSeries
    }
    
    mutating func reportToSet(on location: FilmLocation) {
        if canReportToSet(on: location) {
            self.currentLocation = location
        }
    }
}
