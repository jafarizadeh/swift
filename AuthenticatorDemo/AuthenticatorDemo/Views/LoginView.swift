//
//  LoginView.swift
//  AuthenticatorDemo
//
//  Created by Mehdi JAFARI ZADEH on 24/07/2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authenticationManager: AuthenticationManager
    
    var body: some View {
        VStack(spacing: 40) {
            Title()
            
            switch authenticationManager.biometryType {
            case .faceID:
                PrimaryButton(image: "faceid", text: "Login with FaceID")
                    .onTapGesture {
                        Task.init {
                            await authenticationManager.authenticateWithBiometrics()
                        }
                    }
                
            case .touchID:
                PrimaryButton(image: "touchid", text: "Login with TouchID")
                    .onTapGesture {
                        Task.init {
                            await authenticationManager.authenticateWithBiometrics()
                        }
                    }
                
            default:
                PrimaryButton(image: "person.fill", text: "Login with your credentials")

            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        .background(LinearGradient(colors: [.blue,
                                             .purple],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AuthenticationManager())
    }
}
