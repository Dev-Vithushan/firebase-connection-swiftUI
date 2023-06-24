
import SwiftUI

final class SigInEmailViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
}


struct SignInEmailView: View {
    
    @StateObject private var viewModel = SigInEmailViewModel()
   
    var body: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
                .padding()
            
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            
            SecureField("Password", text: $viewModel.password)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)
            
            Button {
                
                
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            
            
        }
        .padding()
        .navigationTitle("Sign In With Email")
        Spacer()
    }
}

struct SignInEmailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SignInEmailView()
        }
        
    }
}
