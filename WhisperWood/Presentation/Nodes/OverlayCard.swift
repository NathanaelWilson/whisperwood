//
//  OverlayCard.swift
//  Presentation/Nodes — SKELETON. Belum diporting.
//
//  Dipindah dari WWWGameScene.makeOverlay(title:body:stars:buttons:) dan
//  tiga pemanggilnya: completeLevel(), showFailOverlay(), showFinaleOverlay()
//  (baris ~1000-1075 & ~1140-1208). Satu kartu generik dipakai untuk ketiga
//  layar itu — cukup beda title/body/stars/buttons.
//

import SpriteKit

final class OverlayCard {
    let node = SKNode()

    init(title: String, body: String, stars: Int?, buttons: [(title: String, name: String)]) {
        // TODO: port makeOverlay(title:body:stars:buttons:).
    }
}
