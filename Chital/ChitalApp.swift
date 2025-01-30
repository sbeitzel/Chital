import SwiftUI
import SwiftData

@main
struct ChitalApp: App {
    var container: ModelContainer = {
        let configuration = ModelConfiguration(isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: Schema(versionedSchema: ActiveSchema.self),
                                      configurations: [configuration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
        .commands {
            CommandGroup(replacing: .saveItem) {}
        }
        
        Settings {
            SettingsView()
        }
    }
}
