//
//  AudioPlayer.swift
//  Platform — prioritas rendah (lihat dokumen: audio dipotong pertama kalau
//  waktu mepet). Diakses lewat protocol dari awal supaya menambahkannya
//  nanti tidak mengubah Presentation sama sekali.
//
//  Rencana 4 berkas saja (dari Challenge 6 Overview §14):
//    ambience hutan, aliran nutrisi, pohon pulih, tap kutu.
//

import Foundation

protocol AudioPlayer {
    func play(_ sound: SoundEffect)
}

enum SoundEffect {
    case forestAmbience
    case nutrientFlow
    case treeHealed
    case bugTap
}

/// Stub tanpa implementasi — isi nanti begitu 4 berkas audio sudah ada.
final class NoOpAudioPlayer: AudioPlayer {
    func play(_ sound: SoundEffect) {}
}
