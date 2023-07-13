//
//  Color.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI


extension Color {

    //MARK: Main

    static var appBackgroundColor: Color {
        Color("White")
    }
    
    static var borderColor: Color {
        Color("DarkWhite")
    }

    //MARK: Menu

    static var menuItemColor: Color {
        Color("DeepCove")
    }

    //MARK: Checkins

    static var checkinsTitleColor: Color {
        Color("LightDark")
    }

    static var checkinsValuesColor: Color {
        Color("Black")
    }

    static var checkinsMonthlyColor: Color {
        Color("Purple").opacity(0.3)
    }

    static var checkinsRateColor: Color {
        Color("Orange").opacity(0.3)
    }

    static var checkinsTotalColor: Color {
        Color("Green").opacity(0.3)
    }

    static var checkinsCurrentColor: Color {
        Color("Viking").opacity(0.3)
    }

    //MARK: Calendar

    static var monthTitleColor: Color {
        Color("DeepCove")
    }

    static var weekDaysUnselectedColor: Color {
        Color("LightDark")
    }

    static var weekDaysSelectedColor: Color {
        Color("Black")
    }

    static var datesColor: Color {
        Color("Black")
    }

    static var filledBackgroundDateColor: Color {
        Color("LightPurple")
    }

    static var filledLineDateColor: Color {
        Color("Purple")
    }

    //MARK: Chart

    static var chartLineDateColor: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color("White"), Color("Purple"), Color("White")]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    static var chartLollipopColor: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color("Purple").opacity(0.5), Color("White")]),
            startPoint: .top,
            endPoint: .bottom
        )
    }

    //MARK: Memos

    static var titleTextColor: Color {
        Color("LightDark")
    }

    static var textFieldBackgroundColor: Color {
        Color("DarkWhite2")
    }

    static var placeholderColor: Color {
        Color("LightDark")
    }
}
