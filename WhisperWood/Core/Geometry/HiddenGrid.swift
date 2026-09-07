//
//  HiddenGrid.swift
//  Core/Geometry — GRID TERSEMBUNYI, dipindah dari WWWHiddenGrid.swift
//  (prototipe) apa adanya: sudah murni CoreGraphics, tidak pernah dirender
//  ke pemain (kecuali mode debug di Presentation).
//
//    - blocked  : zona rintangan + luar play area
//    - occupied : sel yang sudah dilewati jalur lain (aturan tidak boleh tumpang tindih)
//
//  `rect` di sini boleh langsung memakai kotak ternormalisasi 0...1 x 0...1
//  (ArenaSpace) supaya HiddenGridTests bisa jalan tanpa pernah membuat layar.
//

import CoreGraphics

struct HiddenGrid {

    let cols: Int
    let rows: Int
    let rect: CGRect

    private var blockedCells: [Bool]
    private var occupiedCells: [Bool]

    init(rect: CGRect, cols: Int = 63, rows: Int = 30) {
        self.rect = rect
        self.cols = cols
        self.rows = rows
        self.blockedCells = Array(repeating: false, count: cols * rows)
        self.occupiedCells = Array(repeating: false, count: cols * rows)
    }

    var cellSize: CGSize {
        CGSize(width: rect.width / CGFloat(cols), height: rect.height / CGFloat(rows))
    }

    private func coord(_ p: CGPoint) -> (c: Int, r: Int)? {
        guard rect.width > 0, rect.height > 0, rect.contains(p) else { return nil }
        let c = Int((p.x - rect.minX) / cellSize.width)
        let r = Int((p.y - rect.minY) / cellSize.height)
        guard c >= 0, c < cols, r >= 0, r < rows else { return nil }
        return (c, r)
    }

    /// Di luar play area dihitung sebagai terhalang — jalur tidak boleh keluar arena.
    func isBlocked(_ p: CGPoint) -> Bool {
        guard let k = coord(p) else { return true }
        return blockedCells[k.r * cols + k.c]
    }

    func isOccupied(_ p: CGPoint) -> Bool {
        guard let k = coord(p) else { return false }
        return occupiedCells[k.r * cols + k.c]
    }

    mutating func block(normalized n: CGRect) {
        let c0 = max(0, Int(floor(n.minX * CGFloat(cols))))
        let c1 = min(cols - 1, Int(ceil(n.maxX * CGFloat(cols))) - 1)
        let r0 = max(0, Int(floor(n.minY * CGFloat(rows))))
        let r1 = min(rows - 1, Int(ceil(n.maxY * CGFloat(rows))) - 1)
        guard c0 <= c1, r0 <= r1 else { return }
        for r in r0...r1 {
            for c in c0...c1 {
                blockedCells[r * cols + c] = true
            }
        }
    }

    mutating func occupy(polyline: [CGPoint], radius: CGFloat) {
        guard cellSize.width > 0, cellSize.height > 0 else { return }
        let dc = max(0, Int(ceil(radius / cellSize.width)))
        let dr = max(0, Int(ceil(radius / cellSize.height)))
        for p in polyline {
            guard let k = coord(p) else { continue }
            for rr in (k.r - dr)...(k.r + dr) {
                for cc in (k.c - dc)...(k.c + dc) {
                    guard rr >= 0, rr < rows, cc >= 0, cc < cols else { continue }
                    occupiedCells[rr * cols + cc] = true
                }
            }
        }
    }

    /// Hanya untuk mode debug visual (Presentation menggambar rect-rect ini merah).
    func blockedRects() -> [CGRect] {
        var out: [CGRect] = []
        for r in 0..<rows {
            for c in 0..<cols where blockedCells[r * cols + c] {
                out.append(CGRect(x: rect.minX + CGFloat(c) * cellSize.width,
                                  y: rect.minY + CGFloat(r) * cellSize.height,
                                  width: cellSize.width,
                                  height: cellSize.height))
            }
        }
        return out
    }
}
