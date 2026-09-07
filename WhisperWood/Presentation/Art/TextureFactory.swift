//
//  TextureFactory.swift
//  Presentation/Art — SKELETON. Belum diporting.
//
//  Semua tekstur di prototipe digambar kode saat runtime (tidak ada file
//  gambar) di WWWArt.swift (404 baris). Fungsi yang perlu dipindah ke sini,
//  apa adanya (murni penggambaran, nol state game):
//
//    clearCache()
//    crownTexture(diameter:base:) / crownSprite(diameter:base:)
//    trunkTexture(width:height:base:) / trunkSprite(width:height:base:)
//    obstacleTexture(size:kind:) / obstacleSprite(rect:kind:)
//    soilTexture(size:top:bottom:)
//    skyTexture(size:top:horizon:)
//    grassStripTexture(width:height:grass:soil:)
//    dotTexture(radius:color:)
//
//  Cache tekstur (dictionary internal di WWWArt) ikut dipindah supaya
//  didChangeSize(_:) di tiap scene (yang memanggil clearCache()) tetap benar.
//

import SpriteKit

enum TextureFactory {
    private static var cache: [String: SKTexture] = [:]

    static func clearCache() {
        cache.removeAll()
    }

    // TODO: pindah 10 fungsi di atas dari WoodWideWeb/WWWArt.swift.
}
