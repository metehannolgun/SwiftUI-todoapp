import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currenUserId: String = ""
    private var authListener: AuthStateDidChangeListenerHandle? // 🔥 Referansı saklamak için değişken ekledik

    init() {
        authListener = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currenUserId = user?.uid ?? ""
            }
        }
    }
    
    deinit {
        if let authListener = authListener {
            Auth.auth().removeStateDidChangeListener(authListener) // 🔥 ViewModel yok edilirken listener'ı kaldır
        }
    }

    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}

