//
//  CameraController.swift
//  Presentation/Level — SKELETON. Belum diporting.
//
//  Clamp kamera, turun otomatis sekali di awal level, zoom saat babak hama.
//  Dipindah dari WWWGameScene:
//    camMinY / camMaxY / drawingZoneMaxCamY / isUndergroundFocused (computed vars)
//    loadLevel(_:) bagian "descend" (baris ~408-412)
//    startPestEvent(_:) bagian kamera naik+zoom ke tajuk (baris ~1112-1118)
//    beginWarningBeat() bagian kamera turun+zoom-out (baris ~1129-1134)
//    completeLevel() bagian kamera naik ke kanopi (baris ~1157-1159)
//

import SpriteKit

final class CameraController {
    let camera = SKCameraNode()

    func clamp(to sceneHeight: CGFloat, worldHeight: CGFloat) {
        // TODO: port camMinY/camMaxY clamp dari touchesMoved.
    }

    func descendIntoGround(duration: TimeInterval = 1.1, delay: TimeInterval = 1.2) {
        // TODO: port animasi turun otomatis di loadLevel(_:).
    }

    func zoomToPest(at worldPosition: CGPoint, zoom: CGFloat = 0.50) {
        // TODO: port startPestEvent(_:) bagian kamera.
    }

    func returnToGround() {
        // TODO: port beginWarningBeat() bagian kamera.
    }
}
