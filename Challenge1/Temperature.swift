//
//  Temperature.swift
//  Challenge1
//
//  Created by Kirill Baranov on 26/11/23.
//

import Foundation

class Temperature: ObservableObject {
    
    @Published var input: Double = 0
    @Published var inputMeasure: Temperatures = .celsius
    @Published var outputMeasure: Temperatures = .fahrenheit
    
    var output: Double {
        switch inputMeasure {
        case .celsius:
            switch outputMeasure {
            case .celsius:
                return input
            case .fahrenheit:
                return input * 1.80 + 32
            case .kelvin:
                return input + 271.15
            }
            
        case .fahrenheit:
            switch outputMeasure {
            case .celsius:
                return (input - 32) / 1.80
            case .fahrenheit:
                return input
            case .kelvin:
                return 5 / 9 * (input - 32) + 273.15
            }
            
        case .kelvin:
            switch outputMeasure {
            case .celsius:
                return input - 273.15
            case .fahrenheit:
                return 1.8 * (input - 273) + 32
            case .kelvin:
                return input
            }
        }
    }
}

enum Temperatures: String, CaseIterable, Identifiable {
    case celsius, fahrenheit, kelvin
    var id: Self { self }
}
