//
//  GameEffect.swift
//  Core/Rules — apa yang harus DIANIMASIKAN. GameEngine.apply(intent) hanya
//  mengembalikan daftar ini; Presentation/Level/LevelRenderer yang tahu
//  cara memainkannya jadi animasi SpriteKit.
//

import CoreGraphics

enum Rejection {
    case blockedByObstacle
    case overlapsExistingPath
    case tooShort
    case notEnoughEnergy
    case invalidSource
    case invalidTarget
}

enum GameEffect {
    case rejected(Rejection)
    case linkCreated(LinkState, cost: CGFloat)
    case pickerOpened(linkIndex: Int)
    case pickerClosed
    case flowStarted(linkIndex: Int, resource: ResourceType)
    case treeResolved(treeID: Int)
    case wrongDelivery(treeID: Int, sent: ResourceType, need: ResourceType)
    case pestArrived(treeID: Int, neighbours: [Int], bugCount: Int)
    case bugSwatted(id: Int, remaining: Int)
    case pestCleared
    case treeWarned(treeID: Int)
    case levelComplete(stars: Int)
    case levelFailed
}
