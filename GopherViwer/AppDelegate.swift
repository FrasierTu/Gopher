//
//  AppDelegate.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/5/11.
//

import UIKit

class GopherViwer_AppDelegate: NSObject ,UIApplicationDelegate ,ObservableObject{
    @Published var currentState: Int = 0
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        NSLog("\(#function)")
        currentState = 1
        return true
    }
}
