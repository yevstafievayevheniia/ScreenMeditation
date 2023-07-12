//
//  CalendarView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI

struct CalendarView: View {

    let weekDays = [
        "calendar_san".localized,
        "calendar_mon".localized,
        "calendar_tue".localized,
        "calendar_wed".localized,
        "calendar_thu".localized,
        "calendar_fri".localized,
        "calendar_sat".localized
    ]

    let date = Date().from(year: 2024, month: 1, day: 14)

    let partlyFilled = [13, 17]
    let fullyFilled = [15, 16]


    var body: some View {
        VStack {
            monthSelectorView
            weekDayView
                .padding(.top, 15)
            calendarGrid
        }
    }

    var monthSelectorView: some View {
        HStack {
            Button {
                //TODO: Add previous month button functionality
                print("[ContentView]: previous month button tapped")
            } label: {
                Image.backIcon
            }
            Spacer()
            Text("calendar_title".localized)
                .font(.poppinsFont(ofSize: 16, weight: .medium))
                .foregroundColor(.monthTitleColor)
            Spacer()
            Button {
                //TODO: Add next month button functionality
                print("[ContentView]: next month button tapped")
            } label: {
                Image.forwardIcon
            }
        }

    }

    var weekDayView: some View {
        HStack {
            ForEach(weekDays, id: \.self) {
                if $0 == "calendar_sat".localized {
                    Text($0)
                        .foregroundColor(.weekDaysSelectedColor)
                        .font(.gilroyFont(ofSize: 14, weight: .semibold))
                        .frame(maxWidth: .infinity)
                } else {
                    Text($0)
                        .foregroundColor(.weekDaysUnselectedColor)
                        .font(.gilroyFont(ofSize: 14, weight: .semibold))
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }

    var calendarGrid: some View {
        return VStack {
            ForEach(0..<Date().getNumberOfWeeks(), id: \.self) { row in
                HStack(spacing: 1) {
                    ForEach(1..<8) { column in
                        let count = column + (row * 7) + 1
                        calendarCell(
                            date: date ?? Date(),
                            count: count,
                            partlyFilled: partlyFilled,
                            fullyFilled: fullyFilled
                        )
                    }
                }
            }
        }
    }

    func calendarCell(
        date: Date,
        count: Int,
        partlyFilled: [Int],
        fullyFilled: [Int]
    ) -> AnyView {
        let startingSpaces = date.firstOfMonth().weekDay()
        let daysInMonth = date.daysInMonth()
        let text: String
        let start = startingSpaces == 0 ? 7 : startingSpaces
        let day = count - start
        if count <= start {
            text = String()
        } else if count - start > daysInMonth {
            text = String()
        } else {
            text = String(day)
        }
        let selectionStyle: CalendarSelectionStyle
        if partlyFilled.contains(day) {
            selectionStyle = .partlyFilled
        } else if fullyFilled.contains(day) {
            selectionStyle = .fullyFilled
        } else {
            selectionStyle = .notFilled
        }
        return AnyView(
            ZStack {
                Circle()
                    .trim(
                        from: selectionStyle.trimValue.from,
                        to: selectionStyle.trimValue.to
                    )
                    .stroke(selectionStyle.circleColor, lineWidth: 3)
                    .foregroundColor(.clear)
                    .background(selectionStyle.backgroundColor.cornerRadius(24))
                    .rotationEffect(.degrees(-180))
                    .frame(width: 30, height: 30)
                Button {
                } label: {
                    Text(text)
                        .foregroundColor(.datesColor)
                        .font(.poppinsFont(ofSize: 14, weight: .medium))
                }
                .frame(maxWidth: .infinity)
            }
        )
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
