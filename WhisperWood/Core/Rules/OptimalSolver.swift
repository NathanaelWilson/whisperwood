//
//  OptimalSolver.swift
//  Core/Rules — SKELETON. Belum diporting.
//
//  Pengganti script Python yang sekarang dipakai off-line untuk memverifikasi
//  balancing 10 level (lihat tabel balancing di prototype-notes.md). Bedanya:
//  solver ini harus memakai HiddenGrid + EnergyRules yang SAMA PERSIS dengan
//  yang dipakai game, supaya LevelSolvabilityTests jadi bukti sungguhan,
//  bukan salinan model biaya yang bisa diam-diam jadi bohong kalau kode berubah.
//
//  Algoritma: Dijkstra di grid 63x30, 8 arah, menghindari rintangan —
//  persis seperti yang dideskripsikan sudah dipakai untuk menghasilkan
//  tabel balancing di prototype-notes.md §"Balancing".
//

import CoreGraphics

struct OptimalPlan {
    let totalCost: CGFloat
    let path: [CGPoint]
}

enum OptimalSolver {
    /// Rute termurah dari satu sumber ke satu target lewat HiddenGrid milik `level`.
    /// TODO: implementasi Dijkstra 8-arah di atas grid 63x30.
    static func solve(_ level: LevelSpec) -> OptimalPlan? {
        nil
    }
}
