//
//  TreeNode.swift
//  Presentation/Nodes — SKELETON. Belum diporting.
//
//  PERUBAHAN PENTING dibanding WWWTreeNode.swift (prototipe): flag runtime
//  (isResolved, isInfested, mustBeWarned, isWarned) sekarang HIDUP DI
//  Core/Rules/GameState.swift (struct TreeState), bukan di sini lagi.
//
//  "Node harus bodoh" (dokumen arsitektur §7): TreeNode di sini cuma boleh
//  tahu cara TERLIHAT sehat/layu/pulih — dia tidak boleh tahu KAPAN harus
//  berubah. LevelRenderer yang memanggil TreeNode.apply(_ state: TreeState)
//  setiap kali GameEffect datang dari GameEngine.
//
//  Yang perlu dipindah dari WWWTreeNode.swift (final class TreeNode):
//    init(spec:anchor:rootFan:taproot:trunk:crown:crownDiameter:) — konstruksi node,
//      murni visual, bisa dipindah hampir apa adanya
//    resolve()          -> jadi apply(_:) saat TreeState.isResolved berubah true
//    reactWrong(sent:)  -> jadi apply(_:) + parameter tambahan `sent` dari GameEffect.wrongDelivery
//    setInfested(_:), setMustBeWarned(), markWarned() -> masing-masing jadi
//      reaksi terhadap TreeState yang berubah, bukan dipanggil manual dari scene
//
//  Konstruksi node itu sendiri (anchor/rootFan/taproot/trunk/crown, bagian
//  makeTree(_:) di WWWGameScene baris ~458-520) juga pindah ke sini atau ke
//  factory terpisah, supaya LevelScene tinggal memanggil TreeNode(spec:).
//

import SpriteKit

final class TreeNode {
    let spec: TreeSpec

    init(spec: TreeSpec) {
        self.spec = spec
        // TODO: bangun anchor/rootFan/taproot/trunk/crown seperti
        // WWWGameScene.makeTree(_:), pakai TextureFactory + SymptomArt.
    }

    /// Dipanggil LevelRenderer tiap kali TreeState pohon ini berubah.
    func apply(_ state: TreeState) {
        // TODO: port resolve() / reactWrong(sent:) / setInfested / setMustBeWarned / markWarned
    }
}
