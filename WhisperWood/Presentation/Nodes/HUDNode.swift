//
//  HUDNode.swift
//  Presentation/Nodes — SKELETON. Belum diporting.
//
//  Dipindah dari WWWGameScene: buildHUD(), updateHUD(), label(_:_:_:_:),
//  makeButton(_:_:_:), flashHint(_:_:seconds:) (baris ~232-300 & ~318-325).
//  HUD anak kamera (skala dilawan supaya tidak ikut zoom saat babak hama)
//  — lihat override update(_:) di WWWGameScene yang menghitung `inv`.
//

import SpriteKit

final class HUDNode {
    let node = SKNode()

    // TODO: port titleLabel/energyLabel/kapangLabel/hintLabel/energyBarFill
    // + tombol Peta/Ulangi/Lewati dari buildHUD().

    func update(energy: CGFloat, budget: CGFloat, sickCount: Int, unwarnedCount: Int) {
        // TODO: port updateHUD().
    }

    func flashHint(_ msg: String, color: SKColor, seconds: TimeInterval = 3.0) {
        // TODO: port flashHint(_:_:seconds:).
    }
}
