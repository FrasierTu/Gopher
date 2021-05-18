//
//  ContentView.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/1/13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appDelegate: GopherViwer_AppDelegate

    @State var signInSuccess2 = false
    @State var orientation: UIDeviceOrientation = UIDevice.current.orientation
        
    var body: some View {
        return Group {
            if appDelegate.currentState == 1 {
                LoginView(signInResult: $signInSuccess2)
                if (true == signInSuccess2) {
                    //appDelegate.currentState = 2
                }
            }
/*
            if orientation.isLandscape {
                let columns = [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
                    
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(0...100, id: \.self) { _ in
                            Color.orange.frame(width: 70, height: 70)
                        }
                    }
                }
                .padding()
 
                /*
                HStack {
                    Image(uiImage: UIImage(named: "1.jpg")!)
                        .resizable()
                        .scaledToFit()
                    
                    Image(uiImage: UIImage(named: "2.jpg")!)
                        .resizable()
                        .scaledToFit()
                    /*
                    VStack() {
                        Text("First")
                        Text("Second")
                    }
                    .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height, alignment: .center)
                    .background(Color.red)
                           
                    VStack() {
                        Text("Third")
                        Text("Fourth")
                    }
                    .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height, alignment: .center)
                    .background(Color.green)
 */
                }
 */
            } else {
                Text(orientation.isLandscape ? "Landscape" : "Portrait")
            }*/
        }.onReceive(NotificationCenter.Publisher(center: .default, name:            UIDevice.orientationDidChangeNotification)) { _ in
            self.orientation = UIDevice.current.orientation
        }

        
        /*
        Text(orientation.isLandscape ? "Landscape" : "Portrait")
            .onReceive(NotificationCenter.Publisher(center: .default, name: UIDevice.orientationDidChangeNotification)) { _ in
                    self.orientation = UIDevice.current.orientation
                }
         */
        /*
        VStack() {
            VStack() {
                Text("First")
                Text("Second")
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .center)

            VStack() {
                Text("Placeholder")
                Text("Placeholder")
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: .top)
            .background(Color.red)
        }
        */
        /*
        return Group {
            if signInSuccess2 {
                AppHome()
            }
            else {
                LoginView(signInSuccess: $signInSuccess2)
            }
        }
 */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.environmentObject(OrientationInfo())
    }
}
