//
//  TitleScene.swift
//  Presentation/Scenes — SKELETON. Belum diporting.
//
//  Dipindah dari WWWTitleScene.swift (sudah dibaca penuh — file ini relatif
//  mandiri, aman dipindah hampir apa adanya begitu giliran diporting):
//    build() — satu pohon besar + jaringan miselium berdenyut + spora + tombol
//    button(_:_:_:_:) — helper tombol bulat
//    touchesBegan — cek WWWProgress.totalStars > 0 untuk teks "Lanjutkan"/"Mulai"
//      (di sini ganti ke ProgressStore yang di-inject, bukan WWWProgress statis)
//

import SpriteKit

final class TitleScene: SKScene {

    private let progress: ProgressStore

    init(size: CGSize, progress: ProgressStore) {
        self.progress = progress
        super.init(size: size)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) belum didukung") }

    override func didMove(to view: SKView) {
        // TODO: port build() dari WWWTitleScene.
    }
}
