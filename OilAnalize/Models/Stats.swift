//
//  Stats.swift
//  Dashboard
//
//  Created by Руслан Ишмухаметов on 25.06.2023.
//

import Foundation
import SwiftUI

struct Stats: Identifiable {
    var id: Int
    var tittle: String
    var currentData: CGFloat
    var goal: CGFloat
    var color: Color
}

var statsData = [
    Stats(id: 0, tittle: "Обводненность", currentData: 68, goal: 100, color: Color.blue),
    Stats(id: 1, tittle: "Загрузка ЭЦН", currentData: 55, goal: 100, color: Color.blue),
    Stats(id: 2, tittle: "Рзаб", currentData: 35, goal: 120, color: Color.blue),
    Stats(id: 3, tittle: "Кпрод", currentData: 1.2, goal: 2, color: Color.blue),
    Stats(id: 4, tittle: "Газосодержание", currentData: 78, goal: 100, color: Color.blue),
    Stats(id: 5, tittle: "Рпл", currentData: 120, goal: 150, color: Color.blue),

]

