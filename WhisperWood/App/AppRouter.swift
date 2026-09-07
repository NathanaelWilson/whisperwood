//
//  AppRouter.swift
//  App — alur antar layar, SATU tempat. Sengaja bukan coordinator pattern
//  lengkap (dokumen arsitektur §13: "satu AppRouter dengan enum layar sudah
//  cukup" untuk proyek 10 hari solo).
//
//  Padanan dari `enum GameHost` di ContentView.swift (prototipe), yang
//  menyimpan TitleScene & BiomeMapScene sebagai instance tunggal supaya
//  level bisa kembali ke peta yang sama.
//
//  BELUM DIPASANG ke ContentView.swift — App/ContentView.swift saat ini
//  masih template default SwiftUI. Baru sambungkan router ini setelah
//  Presentation/Scenes/TitleScene & MapScene diporting sungguhan (kalau
//  disambung sekarang, project tidak akan compile karena scene-scene itu
//  masih skeleton kosong).
//

import SpriteKit

enum Screen: Equatable {
    case title
    case narrative
    case map
    case level(index: Int)
}

final class AppRouter {
    private let progress: ProgressStore

    private(set) lazy var title = TitleScene(size: defaultSize, progress: progress)
    private(set) lazy var map = MapScene(size: defaultSize, progress: progress)

    private let defaultSize = CGSize(width: 1334, height: 750)

    init(progress: ProgressStore = UserDefaultsProgressStore()) {
        self.progress = progress
    }

    func present(_ screen: Screen, in view: SKView, transition: SKTransition = .fade(withDuration: 0.5)) {
        switch screen {
        case .title:
            view.presentScene(title, transition: transition)
        case .narrative:
            let n = NarrativeScene(size: view.bounds.size)
            n.scaleMode = .resizeFill
            view.presentScene(n, transition: transition)
        case .map:
            view.presentScene(map, transition: transition)
        case .level(let index):
            let s = LevelScene(size: view.bounds.size)
            s.scaleMode = .resizeFill
            s.startLevelIndex = index
            s.onExitToMap = { [weak self, weak view] in
                guard let self, let view else { return }
                self.present(.map, in: view)
            }
            view.presentScene(s, transition: transition)
        }
    }
}
