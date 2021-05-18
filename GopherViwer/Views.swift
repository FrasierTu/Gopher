//
//  Views.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/2/22.
//

import SwiftUI
struct View1: View {
    @State var GoToView2:Bool = false
    var body: some View {
        ZStack {
            if (GoToView2) {
                View2(GoToView1: self.$GoToView2)
            } else {
                VStack {
                    Button(action: {
                        withAnimation {
                            self.GoToView2.toggle()
                        }
                    }) {
                        Text("Go to view 2")
                    }
                }
            }
        }
    }
}

struct View2: View {
    @Binding var GoToView1: Bool
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.GoToView1.toggle()
                }
            }) {
                Text("Go to view 1")
            }
        }.transition(.move(edge: .leading))
    }
}

