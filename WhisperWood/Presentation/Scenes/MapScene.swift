//
//  MapScene.swift
//  Presentation/Scenes — SKELETON. Belum diporting.
//
//  Peta Musim: puncak lingkaran besar terlihat sebagai bukit melengkung,
//  pohon berdiri di sepanjang lengkungannya (satu level = satu pohon).
//  Geser mengubah offset sudut, musim berubah lewat interpolasi palet.
//
//  Dipindah dari WWWBiomeMap.swift (BiomeMapScene, 494 baris):
//    layout() / pointOnArc(_:) / buildBackdrop() / buildTrees() / makeMapTree(_:)
//    padlock(_:) / buildHUD() / seasonColor(_:) / biome(_:) / lerp(_:_:_:)
//    refresh() / touchesBegan/Moved/Ended/Cancelled / snapToNearest() / launch(_:)
//
//  Progres level (terbuka/terkunci, jumlah bintang) dibaca lewat
//  Platform/ProgressStore, bukan langsung WWWProgress statis seperti di
//  prototipe — supaya MapScene bisa dites dengan progress store palsu.
//

import SpriteKit

final class MapScene: SKScene {

    private let progress: ProgressStore

    init(size: CGSize, progress: ProgressStore) {
        self.progress = progress
        super.init(size: size)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) belum didukung") }

    override func didMove(to view: SKView) {
        // TODO: port layout()/buildBackdrop()/buildTrees() dari BiomeMapScene.
    }
}
