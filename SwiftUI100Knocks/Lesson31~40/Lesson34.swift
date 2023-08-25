//
//  Lesson34.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/08/25.
//

import SwiftUI

struct Lesson34: View {
    @State private var message = "Shake Me"
    var body: some View {
        Text(message)
            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
                self.message = "Device Did Shake"
            }
    }
}

extension NSNotification.Name {
    public static let deviceDidShakeNotification = NSNotification.Name("DeviceDidShakeNotification")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}

struct Lesson34_Previews: PreviewProvider {
    static var previews: some View {
        Lesson34()
    }
}
