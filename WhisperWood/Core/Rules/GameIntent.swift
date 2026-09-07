//
//  GameIntent.swift
//  Core/Rules — apa yang PEMAIN minta. Presentation (LevelInput) menerjemahkan
//  sentuhan jadi salah satu kasus ini, lalu mengirimkannya ke GameEngine.
//
//  Titik-titik jalur (`path`) sudah dalam koordinat TERNORMALISASI (0...1) —
//  konversi dari layar dilakukan di Presentation/Level/LevelLayout, persis
//  seperti fungsi `point(_:)` di WWWGameScene tapi arahnya dibalik.
//

import CoreGraphics

enum GameIntent {
    case connect(from: Int, to: Int, path: [CGPoint])
    case send(ResourceType)
    case closePicker
    case reopenPicker(treeID: Int)
    case swatBug(id: Int)
    case retryLevel
    case skipLevel
}
