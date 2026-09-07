//
//  LevelScene.swift
//  Presentation/Scenes — SKELETON. Belum diporting.
//
//  Scene ini seharusnya hanya MERAKIT (dokumen arsitektur §7), bukan
//  memutuskan — target akhirnya sekitar 150 baris, dibanding WWWGameScene
//  yang sekarang 1208 baris mengerjakan delapan pekerjaan sekaligus
//  (layout, input, gambar, validasi, diagnosis, hama, HUD, overlay).
//
//  Isinya nanti cuma:
//    private var engine: GameEngine!
//    private var layout = LevelLayout()
//    private var renderer = LevelRenderer()
//    private var input = LevelInput()
//    private var camera_ = CameraController()
//    private var pest = PestSequence()
//
//  dan satu pola: `for effect in engine.apply(intent) { renderer.play(effect) }`
//  dipanggil dari LevelInputDelegate.
//

import SpriteKit

final class LevelScene: SKScene {

    var startLevelIndex = 0
    var onExitToMap: (() -> Void)?

    override func didMove(to view: SKView) {
        // TODO: rakit engine + layout + renderer + input + camera + pest
        // dari GameEngine(level:) dan komponen Presentation/Level/*.
    }
}
