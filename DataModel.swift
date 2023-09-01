//
//  DataModel.swift
//  WeatherUtil
//
//  Created by Zaid Kamil on 8/15/23.
//

import UIKit
import SwiftUI

//create Data structure - define day of week - define: temp, day
//hashable - unique identifier
struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    
    var color: Color //create var color data type Color
    
}

class DataModel: NSObject {
    //array of weather data object. data model built in array
    static let data: [WeatherData] = [
        //object have info of id, day
        WeatherData(id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 2, day: "Tuesday", high: 75, low: 65, icon: "sun.max.fill",  color: .orange),
        WeatherData(id: 3, day: "Wednesday", high: 65, low: 40, icon: "cloud.drizzle.fill", color: .blue),
        WeatherData(id: 4, day: "Thursday", high: 71, low: 60, icon: "cloud.fog.fill", color: .gray),
        WeatherData(id: 5, day: "Friday", high: 78, low: 60, icon: "sun.max.fill",  color: .orange),
        WeatherData(id: 6, day: "Saturday", high: 80, low: 60, icon: "sun.max.fill" , color: .orange),
        WeatherData(id: 7, day: "Sunday", high: 79, low: 60, icon: "sun.max.fill",  color: .orange),
    ]

}
