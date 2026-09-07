//
//  ScienceCopy.swift
//  Core/Content — SEMUA teks edukasi yang lepas dari kode per-level di sini,
//  supaya guru/dosen pembimbing bisa memeriksa akurasi sains dengan membaca
//  SATU file, dan supaya versi Bahasa Inggris nanti tinggal menerjemahkan
//  file ini saja.
//
//  Dialog Kapang (`kapang`) dan kartu fakta (`fact`) tiap level masih
//  melekat di LevelSpec masing-masing (lihat Levels+*.swift) — itu paling
//  gampang dibaca berdampingan dengan datanya. Yang benar-benar lepas dari
//  level tertentu dan lintas-level ditaruh di sini: kalimat Kapang saat
//  salah diagnosis, dipindah dari WWWLevelData.swift (prototipe).
//

import Foundation

enum ScienceCopy {

    /// Enam kombinasi salah. Tiap kalimat menjelaskan APA yang terjadi,
    /// bukan sekadar bilang "salah" — anak harus mengerti sebabnya.
    static func missLine(sent: ResourceType, need: ResourceType) -> String {
        switch (sent, need) {
        case (.water, .sugar):
            return "Tanahnya jadi becek. Tapi dia bukan kehausan — dia tidak kebagian cahaya."
        case (.water, .mineral):
            return "Airnya masuk, daunnya tetap kuning. Yang kurang bukan air."
        case (.sugar, .water):
            return "Daunnya sempat menghijau, lalu layu lagi. Akarnya masih kering."
        case (.sugar, .mineral):
            return "Tidak ada yang berubah. Dia sudah cukup makan, ada yang lain yang kurang."
        case (.mineral, .sugar):
            return "Warnanya membaik sedikit, tapi dia tetap kurus. Dia butuh energi, bukan mineral."
        case (.mineral, .water):
            return "Sempat segar, lalu terkulai lagi. Mineralnya tidak bisa jalan tanpa air."
        default:
            return "Belum tepat. Coba lihat lagi gejalanya."
        }
    }
}
