//
//  AppHome.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/3/3.
//

import SwiftUI

struct AppHome: View {
    
    var body: some View {
        VStack {
            Text(LocalizedStringKey("Test"))
            Text("Hello freaky world!")
            Text("You are signed in.")
        }
        .transition(.move(edge: .trailing))
    }
    
    func afterLogin() {
        
    }
}
