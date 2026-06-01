//
//  cheecahData.swift
//  C3 result draft
//
//  Created by Jaebin Ahn on 6/1/26.
//

import Foundation
import SwiftData

enum CheecahRound: Int, Codable {
    case first = 1
    case second = 2
}

@Model
class CheecahData {
    var cheecahDate: Date
    var round: CheecahRound
    var duration: TimeInterval
    var score: Int
    var feedback: String
    var upperTooth: [Int] = []
    var lowerTooth: [Int] = []
    var isStop: Bool = false
    
    init(date: Date, round: CheecahRound) {
        self.cheecahDate = date
        self.round = round
        self.score = 0
        self.duration = 0
        self.feedback = ""
        self.upperTooth = Array(repeating: 0, count: 12)
        self.lowerTooth = Array(repeating: 0, count: 12)
    }
}
