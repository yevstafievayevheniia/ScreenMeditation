//
//  StatisticCardStyle.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

enum StatisticCardStyle: Equatable {
    case monthlyCheckins
    case monthlyCheckinsRate
    case totalCheckins
    case currentStreak

    var icon: Image {
        switch self {
        case .monthlyCheckins:
            return .calendarSimpleIcon
        case .monthlyCheckinsRate:
            return .persentIcon
        case .totalCheckins:
            return .calendarComplexIcon
        case .currentStreak:
            return .chartIcon
        }
    }

    var title: String {
        switch self {
        case .monthlyCheckins:
            return "checkins_monthly_title".localized
        case .monthlyCheckinsRate:
            return "checkins_rate_title".localized
        case .totalCheckins:
            return "checkins_total_title".localized
        case .currentStreak:
            return "checkins_current_title".localized
        }
    }

    var description: String {
        switch self {
        case .monthlyCheckins:
            return "30"
        case .monthlyCheckinsRate:
            return "25"
        case .totalCheckins:
            return "260"
        case .currentStreak:
            return "24"
        }
    }

    var value: String {
        switch self {
        case .monthlyCheckins:
            return "checkins_days_label".localized
        case .monthlyCheckinsRate:
            return "%"
        case .totalCheckins:
            return "checkins_days_label".localized
        case .currentStreak:
            return "checkins_days_label".localized
        }
    }

    var backgroundColor: Color {
        switch self {
        case .monthlyCheckins:
            return .checkinsMonthlyColor
        case .monthlyCheckinsRate:
            return .checkinsRateColor
        case .totalCheckins:
            return .checkinsTotalColor
        case .currentStreak:
            return .checkinsCurrentColor
        }
    }
}

