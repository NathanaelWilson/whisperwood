//
//  PestEvent.swift
//  Core/Model — event hama, DIJADWALKAN di data level, bukan acak, supaya
//  bisa diuji, dibalans, dan tidak muncul di saat yang merusak alur.
//

import Foundation

struct PestEvent {
    /// Muncul setelah pemain berhasil mengirim zat yang benar sebanyak ini.
    let afterDeliveries: Int
    /// Pohon sehat yang dihinggapi kutu.
    let treeID: Int
    /// Pohon sehat yang harus diperingatkan lewat jaringan.
    let neighbourIDs: [Int]
    let bugCount: Int
}
