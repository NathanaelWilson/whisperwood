//
//  SymptomArt.swift
//  Presentation/Art — dipindah dari WWWTreeNode.swift (prototipe) apa
//  adanya. Murni penggambaran (SKNode), tidak menyimpan state apa pun,
//  jadi aman dipindah langsung ke Presentation.
//
//  Gejala dibedakan lewat BENTUK, bukan hanya warna (aksesibilitas —
//  lihat Challenge 6 Overview §13).
//

import SpriteKit

enum SymptomArt {

    /// Bayangan menutupi tajuk -> pohon tidak kebagian cahaya -> butuh GULA.
    static func shadeCloud(_ s: CGFloat) -> SKNode {
        let n = SKNode()
        let offsets: [CGPoint] = [CGPoint(x: -s * 0.45, y: 0), CGPoint(x: 0, y: s * 0.18), CGPoint(x: s * 0.45, y: 0)]
        let radii: [CGFloat] = [s * 0.42, s * 0.55, s * 0.40]
        for (i, o) in offsets.enumerated() {
            let c = SKShapeNode(circleOfRadius: radii[i])
            c.position = o
            c.fillColor = Palette.shade
            c.strokeColor = SKColor(white: 0, alpha: 0.55)
            c.lineWidth = max(1.5, s * 0.06)
            c.alpha = 0.9
            n.addChild(c)
        }
        n.run(.repeatForever(.sequence([
            .moveBy(x: s * 0.12, y: 0, duration: 2.2),
            .moveBy(x: -s * 0.12, y: 0, duration: 2.2)
        ])))
        return n
    }

    /// Tanah retak di kaki batang -> butuh AIR.
    static func soilCrack(_ s: CGFloat) -> SKNode {
        let n = SKNode()
        let patch = SKShapeNode(rect: CGRect(x: -s, y: -s * 0.45, width: s * 2, height: s * 0.9), cornerRadius: s * 0.2)
        patch.fillColor = Palette.barren
        patch.strokeColor = SKColor(white: 0, alpha: 0.5)
        patch.lineWidth = max(1.5, s * 0.05)
        patch.alpha = 0.95
        n.addChild(patch)

        let p = CGMutablePath()
        p.move(to: CGPoint(x: -s * 0.85, y: -s * 0.05))
        p.addLine(to: CGPoint(x: -s * 0.35, y: s * 0.28))
        p.addLine(to: CGPoint(x: 0, y: -s * 0.22))
        p.addLine(to: CGPoint(x: s * 0.38, y: s * 0.26))
        p.addLine(to: CGPoint(x: s * 0.85, y: -s * 0.10))
        let crack = SKShapeNode(path: p)
        crack.strokeColor = SKColor(red: 0.28, green: 0.20, blue: 0.14, alpha: 1)
        crack.lineWidth = max(2, s * 0.16)
        crack.lineJoin = .round
        crack.lineCap = .round
        n.addChild(crack)
        return n
    }

    /// KOREKSI SAINS: daun menguning MERATA mulai dari bawah -> kurang nitrogen -> butuh MINERAL.
    /// (Bukan klorosis antar-tulang-daun — itu kurang besi/magnesium, bukan nitrogen.)
    static func paleLeaves(_ s: CGFloat) -> SKNode {
        let n = SKNode()

        func leaf(_ fill: SKColor, at p: CGPoint, scale k: CGFloat) -> SKNode {
            let path = CGMutablePath()
            let w = s * k
            path.move(to: CGPoint(x: -w, y: 0))
            path.addQuadCurve(to: CGPoint(x: w, y: 0), control: CGPoint(x: 0, y: w * 0.82))
            path.addQuadCurve(to: CGPoint(x: -w, y: 0), control: CGPoint(x: 0, y: -w * 0.82))
            let l = SKShapeNode(path: path)
            l.fillColor = fill
            l.strokeColor = SKColor(white: 0.08, alpha: 0.7)
            l.lineWidth = max(2, s * 0.11)
            l.position = p

            let rib = CGMutablePath()
            rib.move(to: CGPoint(x: -w * 0.78, y: 0))
            rib.addLine(to: CGPoint(x: w * 0.78, y: 0))
            let r = SKShapeNode(path: rib)
            r.strokeColor = SKColor(white: 0.08, alpha: 0.35)
            r.lineWidth = max(1, s * 0.05)
            l.addChild(r)
            return l
        }

        // daun atas masih kehijauan, daun bawah sudah kuning pucat:
        // nitrogen berpindah ke pucuk, jadi daun tua menguning lebih dulu
        n.addChild(leaf(SKColor(red: 0.66, green: 0.76, blue: 0.36, alpha: 1),
                        at: CGPoint(x: s * 0.30, y: s * 0.42), scale: 0.72))
        n.addChild(leaf(Palette.leafPale, at: CGPoint(x: -s * 0.20, y: -s * 0.16), scale: 0.92))

        n.run(.repeatForever(.sequence([
            .rotate(byAngle: 0.10, duration: 1.7),
            .rotate(byAngle: -0.10, duration: 1.7)
        ])))
        return n
    }

    /// Kutu daun. Pohon ini jadi SUMBER sinyal bahaya, bukan target.
    static func bugs(_ s: CGFloat) -> SKNode {
        let n = SKNode()
        let spots: [CGPoint] = [CGPoint(x: -s * 0.5, y: s * 0.25),
                                CGPoint(x: s * 0.35, y: -s * 0.1),
                                CGPoint(x: 0, y: s * 0.55)]
        for (i, sp) in spots.enumerated() {
            n.addChild(singleBug(s * 0.9, at: sp, phase: i))
        }
        return n
    }

    /// Satu kutu — dipakai juga sebagai target tap di babak hama (lihat
    /// Presentation/Level/PestSequence.swift).
    static func singleBug(_ s: CGFloat, at p: CGPoint, phase: Int) -> SKNode {
        let bug = SKNode()
        let body = SKShapeNode(ellipseOf: CGSize(width: s * 0.46, height: s * 0.33))
        body.fillColor = Palette.bug
        body.strokeColor = SKColor(white: 1, alpha: 0.45)
        body.lineWidth = max(1, s * 0.04)
        bug.addChild(body)

        let ant = CGMutablePath()
        ant.move(to: CGPoint(x: s * 0.14, y: s * 0.08))
        ant.addLine(to: CGPoint(x: s * 0.30, y: s * 0.26))
        ant.move(to: CGPoint(x: s * 0.14, y: -s * 0.02))
        ant.addLine(to: CGPoint(x: s * 0.32, y: s * 0.06))
        let antenna = SKShapeNode(path: ant)
        antenna.strokeColor = Palette.bug
        antenna.lineWidth = max(1, s * 0.05)
        bug.addChild(antenna)

        bug.position = p
        let d = 0.6 + Double(phase) * 0.15
        bug.run(.repeatForever(.sequence([
            .moveBy(x: s * 0.12, y: s * 0.06, duration: d),
            .moveBy(x: -s * 0.10, y: -s * 0.12, duration: d),
            .moveBy(x: -s * 0.02, y: s * 0.06, duration: d)
        ])))
        return bug
    }

    /// Badge di dekat akar — inilah yang sebenarnya dibaca anak saat menggambar,
    /// karena tajuk tidak terlihat dari zona bawah tanah.
    static func badge(for spec: TreeSpec, size s: CGFloat) -> SKNode? {
        guard spec.kind == .ailing, let need = spec.need else { return nil }
        let art: SKNode
        switch need {
        case .sugar:   art = shadeCloud(s * 0.8)
        case .water:   art = soilCrack(s * 0.8)
        case .mineral: art = paleLeaves(s * 0.8)
        case .warning: return nil
        }
        let holder = SKNode()
        let plate = SKShapeNode(circleOfRadius: s)
        plate.fillColor = SKColor(white: 0.10, alpha: 0.80)
        plate.strokeColor = SKColor(white: 1, alpha: 0.30)
        plate.lineWidth = 1.5
        holder.addChild(plate)
        holder.addChild(art)
        return holder
    }
}
