//
//  GopherViwerApp.swift
//  GopherViwer
//
//  Created by frasier tu on 2021/1/13.
//

import SwiftUI

@main
struct GopherViwerApp: App {
    @UIApplicationDelegateAdaptor(GopherViwer_AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { (_) in
                    NSLog("UIApplication: active")
                }
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { (_) in
                    NSLog("UIApplication: background")
                }
        }
    }
}
