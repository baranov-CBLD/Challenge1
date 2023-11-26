//
//  ContentView.swift
//  Challenge1
//
//  Created by Kirill Baranov on 26/11/23.
//

import SwiftUI

struct ContentView: View {


    @StateObject var temperature = Temperature()
    
    @State private var length = Lengths.meters
    @State private var newLength = Lengths.kilometers

    @State private var time = Times.minutes
    @State private var newTime = Times.hours

    @State private var volume = Volumes.milliliters
    @State private var newVolume = Volumes.liters
    
    var body: some View {
        
        NavigationStack {
            Form {
                Section("Temperature") {
                    HStack {
                        Text("Input value:")
                        TextField("Input", value: $temperature.input, format: .number)
                            .bold()
                    }
                        Picker("From", selection: $temperature.inputMeasure) {
                            ForEach (Temperatures.allCases) {
                                Text($0.rawValue.capitalized)
                            }
                        }
                        .pickerStyle(.segmented)
                    
                    
                        Picker("To", selection: $temperature.outputMeasure) {
                            ForEach (Temperatures.allCases) {
                                Text($0.rawValue.capitalized)
                            }
                        }
                        .pickerStyle(.segmented)
                        
                    HStack {
                        Text("Result:")
                        Text(temperature.output, format: .number)
                    }
                }
                
                
                
                Section("Length") {
                    Picker("From", selection: $length) {
                        ForEach (Lengths.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    Picker("To", selection: $newLength) {
                        ForEach (Lengths.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                }
                
                Section("Time") {
                    Picker("From", selection: $time) {
                        ForEach (Times.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    Picker("To", selection: $newTime) {
                        ForEach (Times.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                }
                
                Section("Volume") {
                    Picker("From", selection: $volume) {
                        ForEach (Volumes.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                    Picker("To", selection: $newVolume) {
                        ForEach (Volumes.allCases) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                }
            }
            .navigationTitle("Convertor")
        } //NavStack
    }
}

#Preview {
    ContentView()
}
