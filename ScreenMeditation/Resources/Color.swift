//
//  Color.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI


extension Color {

    
    static var appBackgroundColor: Color {
        Color("White")
    }
    
    static var borderColor: Color {
        Color("DarkWhite")
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

    static var titleTextColor: Color {
        Color("LightDark")
    }

    static var textFieldBackgroundColor: Color {
        Color("DoubleDarkWhite")
    }

    static var placeholderColor: Color {
        Color("LightDark")
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
}