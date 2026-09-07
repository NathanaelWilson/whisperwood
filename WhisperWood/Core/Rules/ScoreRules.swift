//
//  ScoreRules.swift
//  Core/Rules — rating bintang dari sisa energi, dipindah dari `Tunables`
//  di WWWGameScene (star3Threshold / star2Threshold).
//

import CoreGraphics

enum ScoreRules {

    static let star3Threshold: CGFloat = 0.25   // sisa energi >= 25% -> 3 bintang
    static let star2Threshold: CGFloat = 0.08

    static func stars(remainingEnergy energy: CGFloat, budget: CGFloat) -> Int {
        guard budget > 0 else { return 1 }
        let ratio = max(0, energy / budget)
        if ratio >= star3Threshold { return 3 }
        if ratio >= star2Threshold { return 2 }
        return 1
    }
}
