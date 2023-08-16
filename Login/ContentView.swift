//
//  ContentView.swift
//  Login
//
//  Created by Shoaib Akram on 16/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var usernameInput: String = ""
    @State var passwordInput: String = ""
    
    @State var userMessage = ""
    
    
    var username = "user"
    var password = "pass"
    
    var body: some View {
        
        VStack (spacing: 50)  {
            
            Text(self.userMessage)
            
            
            
            TextField("Username", text: self.$usernameInput)
            
            
            
            TextField("Password", text: self.$passwordInput)
        
            
            Button("Login") {
                self.checkCredentials()
            }
        }
        .padding()
    }
    
    
    func checkCredentials() {
        if self.usernameInput == self.username && self.passwordInput == self.password {
            self.userMessage = "User logged in successfully"
        }
        else {
            self.userMessage = "Credentials not matched"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
