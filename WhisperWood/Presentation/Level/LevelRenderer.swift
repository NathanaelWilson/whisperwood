//
//  LevelRenderer.swift
//  Presentation/Level — SKELETON. Belum diporting.
//
//  Satu-satunya tempat yang menerjemahkan [GameEffect] (dari GameEngine)
//  jadi animasi SpriteKit. Scene tinggal memainkan effect — lihat dokumen
//  arsitektur §6: `for effect in engine.apply(intent) { renderer.play(effect) }`.
//
//  Dipindah dari WWWGameScene:
//    commitPath(_:cost:from:to:warning:)  -> .linkCreated
//    openPicker(for:) / closePicker       -> .pickerOpened / .pickerClosed
//    flowParticles(along:color:then:)     -> .flowStarted (baris ~938-955)
//    afterCorrectDelivery/afterWarningDelivered -> .treeResolved / .treeWarned
//    reject(_:) + flashHint               -> .rejected
//    completeLevel/showFailOverlay        -> .levelComplete / .levelFailed
//    refreshHalos()/addHalo(to:color:)    -> dipanggil ulang tiap render pass
//      (baris ~525-548)
//

import SpriteKit

final class LevelRenderer {
    func play(_ effect: GameEffect) {
        switch effect {
        case .rejected:            break // TODO
        case .linkCreated:         break // TODO
        case .pickerOpened:        break // TODO
        case .pickerClosed:        break // TODO
        case .flowStarted:         break // TODO
        case .treeResolved:        break // TODO
        case .wrongDelivery:       break // TODO
        case .pestArrived:         break // TODO
        case .bugSwatted:          break // TODO
        case .pestCleared:         break // TODO
        case .treeWarned:          break // TODO
        case .levelComplete:       break // TODO
        case .levelFailed:         break // TODO
        }
    }
}
