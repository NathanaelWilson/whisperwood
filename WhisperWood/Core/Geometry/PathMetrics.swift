//
//  PathMetrics.swift
//  Core/Geometry — panjang & CGPath, dipecah dari WWWPathMath.swift.
//

import CoreGraphics

enum PathMetrics {

    static func distance(_ a: CGPoint, _ b: CGPoint) -> CGFloat {
        hypot(a.x - b.x, a.y - b.y)
    }

    static func length(_ pts: [CGPoint]) -> CGFloat {
        guard pts.count > 1 else { return 0 }
        var total: CGFloat = 0
        for i in 1..<pts.count {
            total += distance(pts[i - 1], pts[i])
        }
        return total
    }

    /// Dipakai di Presentation untuk render (SKShapeNode(path:)) — Core sendiri
    /// tidak pernah menggambar apa pun, cuma menghasilkan geometri.
    static func cgPath(_ pts: [CGPoint]) -> CGPath {
        let path = CGMutablePath()
        guard let first = pts.first else { return path }
        path.move(to: first)
        for i in 1..<pts.count {
            path.addLine(to: pts[i])
        }
        return path
    }
}
