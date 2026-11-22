import SwiftUI

@main
struct neospring: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var respring = false
    
    var body: some View {
        VStack {
            ProgressView()
        }
        .overlay {
            if respring {
                RespringView()
                    .brightness(-1.0)
                    .ignoresSafeArea()
            }
        }
        .task {
            try? await Task.sleep(for: .milliseconds(250))
            respring = true
        }
    }
}
