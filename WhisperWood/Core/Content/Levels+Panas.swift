//
//  Levels+Panas.swift
//  Core/Content — Musim Panas: level 4-6, rintangan & kekeringan, hama pertama.
//

import CoreGraphics

extension LevelLibrary {

    static let panas: [LevelSpec] = [

        LevelSpec(
            index: 4, season: .panas, title: "Batu di Bawah Tanah",
            energy: 41, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.12, 0.82),
                TreeSpec(1, .ailing,  0.50, 0.78, need: .water),
                TreeSpec(2, .ailing,  0.86, 0.55, need: .water)
            ],
            obstacles: [ObstacleSpec(0.28, 0.40, 0.08, 0.60, .rock)],
            pest: nil,
            kapang: "Batu tidak bisa ditembus. Turun lebih dalam, lalu naik lagi.",
            fact: "Miselium tumbuh mengikuti celah tanah. Ia memutar mencari jalan, bukan menembus batu."
        ),

        LevelSpec(
            index: 5, season: .panas, title: "Musim Kering",
            energy: 50, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.50, 0.88),
                TreeSpec(1, .ailing,  0.14, 0.62, need: .water),
                TreeSpec(2, .ailing,  0.86, 0.62, need: .water),
                TreeSpec(3, .ailing,  0.50, 0.22, need: .mineral)
            ],
            obstacles: [
                ObstacleSpec(0.28, 0.36, 0.10, 0.34, .rock),
                ObstacleSpec(0.62, 0.36, 0.10, 0.34, .deadRoot)
            ],
            pest: nil,
            kapang: "Kemarau. Tapi jangan buru-buru — yang di bawah itu daunnya menguning, bukan tanahnya yang retak.",
            fact: "Daun menguning merata mulai dari bawah berarti kekurangan nitrogen. Jamur mengambilnya dari tanah dan menukarnya dengan gula dari pohon."
        ),

        LevelSpec(
            index: 6, season: .panas, title: "Tamu Tak Diundang",
            energy: 29, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.18, 0.80),
                TreeSpec(1, .ailing,  0.48, 0.60, need: .sugar),
                TreeSpec(2, .healthy, 0.80, 0.82),
                TreeSpec(3, .ailing,  0.86, 0.42, need: .water),
                TreeSpec(4, .healthy, 0.58, 0.86)
            ],
            obstacles: [ObstacleSpec(0.30, 0.20, 0.09, 0.28, .barren)],
            pest: PestEvent(afterDeliveries: 1, treeID: 2, neighbourIDs: [4], bugCount: 6),
            kapang: "Ada yang datang. Bersihkan dulu kutunya — lalu ingat, tetangganya belum tahu.",
            fact: "Pada percobaan dengan tanaman buncis, tetangga yang terhubung jaringan jamur ke tanaman yang diserang kutu jadi lebih siap menghadapi serangan berikutnya."
        )
    ]
}
