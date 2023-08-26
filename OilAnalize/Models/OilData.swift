//
//  OilData.swift
//  Dashboard
//
//  Created by Руслан Ишмухаметов on 24.06.2023.
//

import Foundation

struct OilRate: Identifiable {
    var id: Int
    var day: String
    var daylyOilRate: CGFloat
}

var oilRateData = [
    OilRate(id: 0, day: "пн.", daylyOilRate: 15),
    OilRate(id: 1, day: "вт.", daylyOilRate: 12),
    OilRate(id: 2, day: "ср.", daylyOilRate: 17),
    OilRate(id: 3, day: "чт.", daylyOilRate: 15),
    OilRate(id: 4, day: "пт.", daylyOilRate: 10),
    OilRate(id: 5, day: "сб.", daylyOilRate: 12),
    OilRate(id: 6, day: "вс.", daylyOilRate: 18),
]
