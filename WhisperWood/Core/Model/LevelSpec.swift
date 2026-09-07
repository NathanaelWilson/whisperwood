//
//  LevelSpec.swift
//  Core/Model — level = DATA murni. Menambah level berarti menambah satu
//  entri di Core/Content, bukan menulis logic baru.
//

import CoreGraphics

struct LevelSpec {
    let index: Int
    let season: Season
    let title: String
    let energy: CGFloat
    /// Zat yang aktif di picker. Level 1 sengaja cuma satu.
    let nutrients: [ResourceType]
    let trees: [TreeSpec]
    let obstacles: [ObstacleSpec]
    let pest: PestEvent?
    let kapang: String
    let fact: String
}
