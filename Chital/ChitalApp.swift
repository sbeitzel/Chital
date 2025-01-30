import SwiftUI
import SwiftData

@main
struct ChitalApp: App {
    var body: some Scene {
        DocumentGroup(editing: .chitalDocument,
                      migrationPlan: MigrationPlan.self,
                      editor: {
            ContentView()
        })

        Settings {
            SettingsView()
        }
    }
}
