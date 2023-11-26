//
//  Measures.swift
//  Challenge1
//
//  Created by Kirill Baranov on 26/11/23.
//

import Foundation



enum Lengths: String, CaseIterable, Identifiable {
    case meters, kilometers, feet, yards, miles
    var id: Self { self }
}

enum Times: String, CaseIterable, Identifiable {
    case seconds, minutes, hours, days
    var id: Self { self }
}

enum Volumes: String, CaseIterable, Identifiable {
    case milliliters, liters, cups, pints, gallons
    var id: Self { self }
}

