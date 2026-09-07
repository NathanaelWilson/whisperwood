//
//  TreeSpec.swift
//  Core/Model — data satu pohon di sebuah level. Posisi dalam ruang
//  ternormalisasi 0...1 (lihat Core/Geometry/NormalizedSpace.swift).
//

import CoreGraphics

enum TreeKind {
    /// Sehat. Sumber energi, dan bisa dihinggapi hama saat event.
    case healthy
    /// Layu. Butuh satu zat dikirim kepadanya.
    case ailing
}

struct TreeSpec {
    let id: Int
    let kind: TreeKind
    /// Posisi akar, ternormalisasi (0...1) terhadap play area.
    let root: CGPoint
    /// Diisi hanya untuk .ailing.
    let need: ResourceType?

    init(_ id: Int, _ kind: TreeKind, _ x: CGFloat, _ y: CGFloat, need: ResourceType? = nil) {
        self.id = id
        self.kind = kind
        self.root = CGPoint(x: x, y: y)
        self.need = need
    }

    var isTarget: Bool { need != nil }
}
