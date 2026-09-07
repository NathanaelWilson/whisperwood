//
//  GameEngine.swift
//  Core/Rules — SATU-SATUNYA tempat GameState berubah. Presentation boleh
//  BACA Core, tidak boleh mengubah GameState langsung.
//
//  ============================== BELUM DIPORTING ==============================
//  Ini skeleton — badan `apply(_:)` masih kosong. Logic aslinya ada di
//  WWWGameScene.swift (prototipe), tersebar di beberapa fungsi. Peta
//  pemindahannya, per kasus GameIntent:
//
//    .connect(from:to:path:)  <- finishDrawing(at:) + commitPath(_:cost:from:to:warning:)
//                                 (validasi: grid.isBlocked, overlap via grid.isOccupied,
//                                 cek energi cukup — baris ~730-800)
//    .send(_:)                <- sendResource(_:)  (baris ~905-935)
//    .closePicker             <- closePicker(resetState:)
//    .reopenPicker(treeID:)   <- bagian touchesBegan yang membuka ulang picker
//                                 untuk link yang belum delivered (baris ~635-640)
//    .swatBug(id:)            <- tapBug(at:) (baris ~1090-1105)
//    .retryLevel / .skipLevel <- handleButton("retry"/"skip") + advanceLevel()
//
//  Juga perlu diporting dari GameScene: startPestEvent(_:), beginWarningBeat(),
//  checkWin(), checkDeadEnd(), completeLevel(). Semuanya murni keputusan aturan
//  main — nol SpriteKit di dalamnya, cuma perlu dipindah ke bentuk
//  State -> Intent -> Effect di bawah ini.
//  ==============================================================================
//

import CoreGraphics

final class GameEngine {

    private(set) var state: GameState
    private var grid: HiddenGrid
    private let space: ArenaSpace

    init(level: LevelSpec, space: ArenaSpace = ArenaSpace(aspect: 2.1)) {
        self.state = GameState(level: level)
        self.space = space
        var g = HiddenGrid(rect: CGRect(x: 0, y: 0, width: 1, height: 1))
        for o in level.obstacles { g.block(normalized: o.rect) }
        self.grid = g
    }

    /// SATU-SATUNYA pintu perubahan state.
    @discardableResult
    func apply(_ intent: GameIntent) -> [GameEffect] {
        switch intent {
        case .connect(let from, let to, let path):
            return connect(from: from, to: to, path: path)
        case .send(let resource):
            return send(resource)
        case .closePicker:
            return closePicker()
        case .reopenPicker(let treeID):
            return reopenPicker(treeID: treeID)
        case .swatBug(let id):
            return swatBug(id: id)
        case .retryLevel:
            state = GameState(level: state.level)
            return []
        case .skipLevel:
            return []
        }
    }

    // MARK: - TODO: porting dari WWWGameScene

    private func connect(from: Int, to: Int, path: [CGPoint]) -> [GameEffect] {
        // TODO: port dari finishDrawing(at:) + commitPath(_:cost:from:to:warning:)
        []
    }

    private func send(_ resource: ResourceType) -> [GameEffect] {
        // TODO: port dari sendResource(_:)
        []
    }

    private func closePicker() -> [GameEffect] {
        // TODO: port dari closePicker(resetState:)
        []
    }

    private func reopenPicker(treeID: Int) -> [GameEffect] {
        // TODO: port dari bagian touchesBegan yang membuka ulang picker
        []
    }

    private func swatBug(id: Int) -> [GameEffect] {
        // TODO: port dari tapBug(at:) + beginWarningBeat()
        []
    }
}
