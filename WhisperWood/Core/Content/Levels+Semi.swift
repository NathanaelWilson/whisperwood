//
//  Levels+Semi.swift
//  Core/Content — Musim Semi: level 1-3, pengenalan mekanik & diagnosis.
//  Data dipindah dari WWWLevelData.swift (prototipe), sudah diverifikasi
//  lewat Dijkstra (lihat catatan balancing di dokumen implementasi).
//

import CoreGraphics

extension LevelLibrary {

    static let semi: [LevelSpec] = [

        LevelSpec(
            index: 1, season: .semi, title: "Sambungan Pertama",
            energy: 19, nutrients: [.mineral],
            trees: [
                TreeSpec(0, .healthy, 0.22, 0.76),
                TreeSpec(1, .ailing,  0.62, 0.76, need: .mineral)
            ],
            obstacles: [], pest: nil,
            kapang: "Tarik benang dari akar yang bercahaya ke akar yang layu. Lalu pilih apa yang mau dikirim.",
            fact: "Fosfat bergerak sangat lambat di tanah. Benang jamur jauh lebih tipis dari akar, dan bisa menjangkau jauh melewati tanah yang sudah habis."
        ),

        LevelSpec(
            index: 2, season: .semi, title: "Membaca Gejala",
            energy: 36, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.15, 0.80),
                TreeSpec(1, .ailing,  0.48, 0.58, need: .water),
                TreeSpec(2, .ailing,  0.82, 0.80, need: .mineral)
            ],
            obstacles: [], pest: nil,
            kapang: "Lihat dulu apa yang terjadi pada pohonnya sebelum memilih. Tanah retak berarti haus, bukan lapar.",
            fact: "Saat tanah kering, air bisa berpindah dari akar dalam ke akar dangkal di dekatnya. Benang jamur ikut jadi jalurnya."
        ),

        LevelSpec(
            index: 3, season: .semi, title: "Menyambung Terus",
            energy: 46, nutrients: ResourceType.nutrients,
            trees: [
                TreeSpec(0, .healthy, 0.10, 0.82),
                TreeSpec(1, .ailing,  0.36, 0.62, need: .mineral),
                TreeSpec(2, .ailing,  0.62, 0.82, need: .sugar),
                TreeSpec(3, .ailing,  0.88, 0.60, need: .water)
            ],
            obstacles: [], pest: nil,
            kapang: "Pohon yang sudah pulih ikut bercahaya. Dia bisa meneruskan ke pohon berikutnya.",
            fact: "Benang jamur mikoriza menyelimuti ujung akar dan menjulur jauh ke tanah — panjangnya bisa ratusan kali lipat akar pohonnya sendiri."
        )
    ]
}
