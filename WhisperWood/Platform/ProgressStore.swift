//
//  ProgressStore.swift
//  Platform — diakses lewat protocol supaya test bisa memakai versi palsu
//  (in-memory), tanpa menyentuh UserDefaults sungguhan.
//
//  Implementasi UserDefaults di bawah dipindah dari WWWProgress.swift
//  (prototipe) apa adanya — logicnya sudah benar dan tidak menyentuh SpriteKit.
//

import Foundation

protocol ProgressStore {
    /// 0 = belum pernah diselesaikan.
    func stars(forLevel index: Int) -> Int
    /// Hanya menaikkan, tidak pernah menurunkan.
    func record(stars: Int, forLevel index: Int)
    func isUnlocked(_ index: Int, totalLevels: Int) -> Bool
    func reset()
}

final class UserDefaultsProgressStore: ProgressStore {

    private let key = "akarBisikan.stars.v1"
    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    private var table: [String: Int] {
        get { (defaults.dictionary(forKey: key) as? [String: Int]) ?? [:] }
        set { defaults.set(newValue, forKey: key) }
    }

    func stars(forLevel index: Int) -> Int {
        table["\(index)"] ?? 0
    }

    func record(stars: Int, forLevel index: Int) {
        guard stars > 0 else { return }
        var t = table
        t["\(index)"] = max(t["\(index)"] ?? 0, stars)
        table = t
    }

    /// Level pertama selalu terbuka; sisanya terbuka setelah level sebelumnya selesai.
    func isUnlocked(_ index: Int, totalLevels: Int) -> Bool {
        index <= 0 || stars(forLevel: index - 1) > 0
    }

    func reset() {
        defaults.removeObject(forKey: key)
    }
}
