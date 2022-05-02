//
//  viewModel.swift
//  weather app
//
//  Created by Samuel Vieira on 01/05/22.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var title: String = "Rain"
    @Published var description: String = "Raining night"
    @Published var temperature: String = "21.8 C"
    @Published var timezone: String = "Manaus"
}
