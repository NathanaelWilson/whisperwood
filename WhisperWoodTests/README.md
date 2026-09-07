# WhisperWoodTests

File-file di folder ini BELUM jadi target Xcode — project WhisperWood saat
ini cuma punya satu target (app-nya sendiri). Cowork/Claude Code tidak
mengubah `project.pbxproj` secara manual untuk menambah target baru, supaya
tidak merusak file project.

Cara memasangnya (5 menit, sekali saja):

1. Buka `WhisperWood.xcodeproj` di Xcode.
2. **File → New → Target… → Unit Testing Bundle**, beri nama `WhisperWoodTests`,
   target-to-be-tested: `WhisperWood`.
3. Xcode akan membuat folder `WhisperWoodTests/` sendiri dengan satu file
   contoh. Hapus file contoh itu, lalu pindahkan (drag) kelima file `.swift`
   di folder ini ke target yang baru dibuat — atau cukup ganti isi folder
   yang dibuat Xcode dengan isi folder ini (nama folder sama).
4. Jalankan `⌘U`. `PathMetricsTests`, `HiddenGridTests`, dan `EnergyRulesTests`
   sudah harus hijau (mereka menguji kode yang sudah diporting penuh).
   `DiagnosisTests` dan `LevelSolvabilityTests` akan muncul sebagai SKIPPED —
   itu memang isyarat pekerjaan yang masih tersisa (lihat TODO di masing-masing
   file dan di `Core/Rules/GameEngine.swift` / `Core/Rules/OptimalSolver.swift`).
