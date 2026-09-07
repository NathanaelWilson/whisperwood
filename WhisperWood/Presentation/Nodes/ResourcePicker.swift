//
//  ResourcePicker.swift
//  Presentation/Nodes — SKELETON. Belum diporting.
//
//  Dipindah dari WWWGameScene.openPicker(for:) / closePicker(resetState:)
//  (baris ~845-895). Sengaja diletakkan DI BAWAH pohon target, bukan di
//  atas — badge gejala ada di atas akar, anak harus tetap bisa melihat
//  gejala sambil memilih (lihat prototype-notes.md §1).
//
//  Posisi picker dihitung LevelLayout (butuh playRect & batas layar);
//  ResourcePicker sendiri cuma membangun 1-3 tombol dari `nutrients`.
//

import SpriteKit

final class ResourcePicker {
    let node = SKNode()

    init(nutrients: [ResourceType], onSelect: @escaping (ResourceType) -> Void) {
        // TODO: port pembuatan panel + tombol dari openPicker(for:).
    }
}
