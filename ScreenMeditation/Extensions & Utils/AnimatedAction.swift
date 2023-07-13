//
//  AnimatedAction.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

class AnimatedAction {
    static func execute(_ animation: Animation? = .default, _ action: () -> Void) {
        if ProcessInfo.processInfo.arguments.contains("-disableAnimations") {
            action()
        } else {
            withAnimation(animation) {
                action()
            }
        }
    }
}
