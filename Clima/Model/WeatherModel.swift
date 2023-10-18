//
//  WeatherModel.swift
//  Clima
//
//  Created by Adriel Teles on 14/10/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let country: String?
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    func getCityName() -> String{
        
        if country != nil{
            return "\(cityName),\(country!)"
        }else {
            return cityName
        }
    }
    
    func getConditionName() -> String{
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}