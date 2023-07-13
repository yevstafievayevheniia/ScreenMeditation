//
//  Images.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI


extension Image {

    //MARK: Main

    static var backIcon: Image {
        Image("ChevronLeft")
    }

    static var forwardIcon: Image {
        Image("ChevronRight")
    }

    static var moreIcon: Image {
        Image("ThreeDots")
    }

    //MARK: Menu

    static var editIcon: Image {
        Image("Pencil")
    }

    static var archiveIcon: Image {
        Image("ArhiveLoad")
    }

    static var deleteIcon: Image {
        Image("TrashBox")
    }

    //MARK: Checkins

    static var calendarSimpleIcon: Image {
        Image("CalendarSimple")
    }

    static var persentIcon: Image {
        Image("Persent")
    }

    static var calendarComplexIcon: Image {
        Image("CalendarComplex")
    }

    static var chartIcon: Image {
        Image("Chart")
    }

    //MARK: Chart
    
    static var chartDotIcon: Image {
        Image("Dot")
    }
}
