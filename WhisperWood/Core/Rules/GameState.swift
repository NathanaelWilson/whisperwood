//
//  GameState.swift
//  Core/Rules — apa yang SEDANG TERJADI. Satu-satunya sumber kebenaran
//  tentang jalannya satu level, diubah HANYA lewat GameEngine.apply(intent).
//
//  TreeState/LinkState di sini adalah padanan murni-data dari TreeNode/Link
//  di WWWGameScene.swift (prototipe) — flag runtime yang sama
//  (isResolved, isInfested, mustBeWarned, isWarned, delivered), tapi tanpa
//  satu pun SKNode. Presentation yang nanti memetakan state ini ke node.
//

import CoreGraphics

struct TreeState {
    let spec: TreeSpec
    var isResolved = false      // pohon layu sudah dapat zat yang benar
    var isInfested = false      // sedang diserang kutu
    var mustBeWarned = false    // harus menerima sinyal bahaya
    var isWarned = false

    // Aturan arah aliran — dipindah dari TreeNode.canSendNutrient dkk.
    var canSendNutrient: Bool {
        if isInfested { return false }
        switch spec.kind {
        case .healthy: return true
        case .ailing:  return isResolved     // rantai pemulihan
        }
    }
    var canReceiveNutrient: Bool { spec.kind == .ailing && !isResolved }
    var canSendWarning: Bool { isInfested }
    var canReceiveWarning: Bool { mustBeWarned && !isWarned }
}

struct LinkState {
    let fromID: Int
    let toID: Int
    /// Polyline ternormalisasi (hasil PathSmoothing), dipakai ulang oleh
    /// Presentation untuk render — Core tidak menyimpan CGPath/SKShapeNode.
    let points: [CGPoint]
    var delivered: ResourceType?
}

struct GameState {
    let level: LevelSpec
    var energy: CGFloat
    var trees: [Int: TreeState]
    var links: [LinkState]
    var correctDeliveries: Int
    var pestTriggered: Bool
    var phase: Phase

    enum Phase: Equatable {
        case exploring
        case choosing(linkIndex: Int)
        case pestSwatting(remaining: Int)
        case pestWarning
        case complete(stars: Int)
        case failed
    }

    /// State awal sebuah level — padanan bagian awal WWWGameScene.loadLevel(_:).
    init(level: LevelSpec) {
        self.level = level
        self.energy = level.energy
        self.trees = Dictionary(uniqueKeysWithValues: level.trees.map { ($0.id, TreeState(spec: $0)) })
        self.links = []
        self.correctDeliveries = 0
        self.pestTriggered = false
        self.phase = .exploring
    }
}
