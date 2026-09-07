//
//  LevelInput.swift
//  Presentation/Level — SKELETON. Belum diporting.
//
//  Routing sentuhan: menggambar-jalur vs menggeser-kamera vs tap tombol.
//  Keputusan diambil SEKALI di awal sentuhan (prinsip UX §12 di overview):
//  jangan pakai UIPanGestureRecognizer, dia mengirim touchesCancelled dan
//  memutus garis yang sedang digambar.
//
//  Dipindah dari WWWGameScene.touchesBegan/Moved/Ended/Cancelled
//  (baris ~608-680) + nearestTree(to:where:) (baris ~696-703) +
//  nodeName(at:prefix:within:) (baris ~684-696).
//
//  Output LevelInput BUKAN mengubah state langsung — dia menghasilkan
//  GameIntent yang dikirim ke GameEngine.apply(_:), lalu LevelScene yang
//  memutuskan efek visualnya lewat LevelRenderer.
//

import UIKit
import CoreGraphics
import SpriteKit

protocol LevelInputDelegate: AnyObject {
    func levelInput(_ input: LevelInput, didProduce intent: GameIntent)
    func levelInput(_ input: LevelInput, didPanCameraTo normalizedY: CGFloat)
}

final class LevelInput {
    weak var delegate: LevelInputDelegate?

    func touchesBegan(_ touches: Set<UITouch>, in scene: SKScene) {
        // TODO: port touchesBegan (routing gambar vs geser vs tombol).
    }

    func touchesMoved(_ touches: Set<UITouch>, in scene: SKScene) {
        // TODO: port touchesMoved.
    }

    func touchesEnded(_ touches: Set<UITouch>, in scene: SKScene) {
        // TODO: port touchesEnded -> finishDrawing(at:).
    }

    func touchesCancelled(_ touches: Set<UITouch>, in scene: SKScene) {
        // TODO: port touchesCancelled -> cancelDrawing().
    }
}
