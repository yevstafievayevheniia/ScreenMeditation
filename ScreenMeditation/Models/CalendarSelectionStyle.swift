//
//  CalendarSelectionStyle.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

enum CalendarSelectionStyle: Equatable {
    case notFilled
    case partlyFilled
    case fullyFilled

    var trimValue: (from: CGFloat, to: CGFloat) {
        switch self {
        case .notFilled:
            return (from: 0.0, to: 0.0)
        case .fullyFilled:
            return (from: 0.0, to: 1.0)
        case .partlyFilled:
            return (from: 0.25, to: 0.75)
        }
    }

    var circleColor: Color {
        switch self {
        case .notFilled:
            return .clear
        case .partlyFilled, .fullyFilled:
            return .filledLineDateColor
        }
    }

    var backgroundColor: Color {
        switch self {
        case .notFilled, .partlyFilled:
            return .clear
        case .fullyFilled:
            return .filledBackgroundDateColor
        }
    }
}
