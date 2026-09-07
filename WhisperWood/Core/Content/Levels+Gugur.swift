//
//  Levels+Gugur.swift
//  Core/Content — Musim Gugur: level 7-8, bayangan & ruang (jalur dilarang menimpa).
//

import CoreGraphics

extension LevelLibrary {

    static let gugur: [LevelSpec] = [

        LevelSpec(
            index: 7, season: .gugur, title: "Di Bawah Bayangan",
            energy: 58, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.50, 0.90),
                TreeSpec(1, .ailing,  0.16, 0.66, need: .sugar),
                TreeSpec(2, .ailing,  0.84, 0.66, need: .sugar),
                TreeSpec(3, .ailing,  0.32, 0.28, need: .mineral),
                TreeSpec(4, .ailing,  0.68, 0.28, need: .sugar)
            ],
            obstacles: [ObstacleSpec(0.44, 0.44, 0.12, 0.30, .rock)],
            pest: nil,
            kapang: "Kanopi makin rapat. Yang di bawah tidak kebagian cahaya — mereka tidak bisa memasak makanannya sendiri.",
            fact: "Bibit di bawah kanopi rapat cuma kebagian sedikit cahaya. Karbon dari pohon besar bisa sampai ke bibit itu lewat jamur di tanah."
        ),

        LevelSpec(
            index: 8, season: .gugur, title: "Jangan Bersilangan",
            energy: 47, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.10, 0.84),
                TreeSpec(1, .ailing,  0.90, 0.84, need: .water),
                TreeSpec(2, .ailing,  0.50, 0.20, need: .mineral),
                TreeSpec(3, .ailing,  0.30, 0.52, need: .sugar)
            ],
            obstacles: [
                ObstacleSpec(0.44, 0.52, 0.09, 0.48, .deadRoot),
                ObstacleSpec(0.62, 0.00, 0.09, 0.42, .rock)
            ],
            pest: nil,
            kapang: "Jaringan butuh ruang. Jalur tidak boleh menimpa jalur yang sudah ada.",
            fact: "Satu sendok teh tanah hutan bisa berisi benang jamur sepanjang berkilo-kilometer kalau direntangkan."
        )
    ]
}
