//
//  DeviceOrientationPublisherApp.swift
//  DeviceOrientationPublisher
//
//  Created by Justin Maronde on 9/6/24.
//

import SwiftUI
import Combine

@main
struct DeviceOrientationPublisherApp: App {
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification).sink { notification in
            let currentOrientation = UIDevice.current.orientation
            print(currentOrientation)
        }.store(in: &cancellables)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
