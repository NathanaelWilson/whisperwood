//
//  Season.swift
//  Core/Model — musim adalah PETUNJUK, bukan jawaban. Gejala tetap bukti
//  yang memutuskan; musim cuma memberi anak pijakan berpikir.
//

import Foundation

enum Season {
    case semi, panas, gugur, dingin

    var title: String {
        switch self {
        case .semi:   return "Musim Semi"
        case .panas:  return "Musim Panas"
        case .gugur:  return "Musim Gugur"
        case .dingin: return "Musim Dingin"
        }
    }

    var hint: String {
        switch self {
        case .semi:   return "musim tumbuh — banyak yang butuh mineral"
        case .panas:  return "kemarau — banyak yang kehausan"
        case .gugur:  return "cahaya berkurang — banyak yang kelaparan"
        case .dingin: return "kutu bertahan di pohon — waspada"
        }
    }
}
