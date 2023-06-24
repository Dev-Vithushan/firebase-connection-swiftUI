import SwiftUI
import Firebase


@main
struct firebase_connectionApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Firebase configured")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
