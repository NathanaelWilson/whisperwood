//
//  Levels+Dingin.swift
//  Core/Content — Musim Dingin: level 9-10, anggaran paling ketat + finale.
//

import CoreGraphics

extension LevelLibrary {

    static let dingin: [LevelSpec] = [

        LevelSpec(
            index: 9, season: .dingin, title: "Berhemat",
            energy: 50, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.08, 0.86),
                TreeSpec(1, .ailing,  0.32, 0.70, need: .mineral),
                TreeSpec(2, .ailing,  0.56, 0.54, need: .sugar),
                TreeSpec(3, .ailing,  0.80, 0.38, need: .water),
                TreeSpec(4, .ailing,  0.94, 0.72, need: .mineral)
            ],
            obstacles: [
                ObstacleSpec(0.22, 0.30, 0.08, 0.22, .rock),
                ObstacleSpec(0.46, 0.20, 0.08, 0.22, .barren),
                ObstacleSpec(0.68, 0.56, 0.08, 0.24, .rock)
            ],
            pest: nil,
            kapang: "Energi tinggal sedikit. Rambatkan dari pohon terdekat yang baru pulih, jangan tarik semuanya dari awal.",
            fact: "Jamur tidak bisa berfotosintesis, jadi seluruh energinya berasal dari pohon. Pohon tidak bisa menjangkau tanah sejauh benang jamur. Keduanya saling butuh."
        ),

        LevelSpec(
            index: 10, season: .dingin, title: "Pusat yang Baru",
            energy: 56, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.50, 0.92),
                TreeSpec(1, .ailing,  0.14, 0.70, need: .sugar),
                TreeSpec(2, .ailing,  0.86, 0.70, need: .water),
                TreeSpec(3, .ailing,  0.30, 0.30, need: .mineral),
                TreeSpec(4, .ailing,  0.70, 0.30, need: .sugar),
                TreeSpec(5, .healthy, 0.50, 0.52)
            ],
            obstacles: [
                ObstacleSpec(0.36, 0.42, 0.09, 0.22, .rock),
                ObstacleSpec(0.56, 0.42, 0.09, 0.22, .rock),
                ObstacleSpec(0.16, 0.12, 0.08, 0.18, .barren)
            ],
            pest: PestEvent(afterDeliveries: 2, treeID: 5, neighbourIDs: [0], bugCount: 8),
            kapang: "Semuanya sekaligus, dan energinya pas-pasan. Baca gejalanya dulu sebelum menarik jalur.",
            fact: "Para ilmuwan masih memperdebatkan seberapa besar peran jaringan ini di hutan sungguhan — mengukurnya sulit. Yang sudah jelas: zat memang berpindah lewat jamur di bawah kaki kita."
        )
    ]
}
