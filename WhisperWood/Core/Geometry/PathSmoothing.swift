//
//  PathSmoothing.swift
//  Core/Geometry — Catmull-Rom, dipecah dari WWWPathMath.swift (prototipe).
//
//  Output smoothing berupa POLYLINE RAPAT — dipakai untuk tiga hal sekaligus:
//    1. render garis (di Presentation/Level/LevelRenderer)
//    2. hitung panjang -> biaya energi (lihat PathMetrics + EnergyRules)
//    3. validasi terhadap grid tersembunyi (lihat HiddenGrid)
//

import CoreGraphics

enum PathSmoothing {

    /// Catmull-Rom spline -> polyline rapat. Titik awal & akhir dipertahankan persis.
    static func smooth(_ pts: [CGPoint], subdivisions: Int = 10) -> [CGPoint] {
        guard pts.count > 2 else { return pts }

        var p = pts
        p.insert(pts[0], at: 0)                 // duplikasi titik awal
        p.append(pts[pts.count - 1])            // duplikasi titik akhir

        var out: [CGPoint] = []
        out.reserveCapacity((p.count - 3) * subdivisions + 1)

        for i in 0..<(p.count - 3) {
            let p0 = p[i], p1 = p[i + 1], p2 = p[i + 2], p3 = p[i + 3]
            for s in 0..<subdivisions {
                let t = CGFloat(s) / CGFloat(subdivisions)
                out.append(catmullRom(p0, p1, p2, p3, t))
            }
        }
        out.append(p[p.count - 2])
        return out
    }

    static func catmullRom(_ p0: CGPoint, _ p1: CGPoint, _ p2: CGPoint, _ p3: CGPoint, _ t: CGFloat) -> CGPoint {
        let t2 = t * t
        let t3 = t2 * t
        let x = 0.5 * ((2 * p1.x)
                       + (-p0.x + p2.x) * t
                       + (2 * p0.x - 5 * p1.x + 4 * p2.x - p3.x) * t2
                       + (-p0.x + 3 * p1.x - 3 * p2.x + p3.x) * t3)
        let y = 0.5 * ((2 * p1.y)
                       + (-p0.y + p2.y) * t
                       + (2 * p0.y - 5 * p1.y + 4 * p2.y - p3.y) * t2
                       + (-p0.y + 3 * p1.y - 3 * p2.y + p3.y) * t3)
        return CGPoint(x: x, y: y)
    }
}
