//
//  ObstacleSpec.swift
//  Core/Model — rintangan di play area, dalam ruang ternormalisasi.
//

import CoreGraphics

struct ObstacleSpec {
    enum Kind { case rock, deadRoot, barren }
    let rect: CGRect
    let kind: Kind

    init(_ x: CGFloat, _ y: CGFloat, _ w: CGFloat, _ h: CGFloat, _ kind: Kind = .rock) {
        self.rect = CGRect(x: x, y: y, width: w, height: h)
        self.kind = kind
    }
}
