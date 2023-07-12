//
//  CheckinsView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

struct CheckinsView: View {

    let data = [
        StatisticCardStyle.monthlyCheckins,
        StatisticCardStyle.monthlyCheckinsRate,
        StatisticCardStyle.totalCheckins,
        StatisticCardStyle.currentStreak,
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("checkins_title".localized)
                    .font(.poppinsFont(ofSize: 16, weight: .medium))
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        card(
                            icon: item.icon,
                            title: item.title,
                            description: item.description,
                            value: item.value,
                            background: item.backgroundColor
                        )
                    }
                }
            }
        }
    }
}

extension CheckinsView {

    func card(
        icon: Image,
        title: String,
        description: String,
        value: String,
        background: Color
    ) -> some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        icon
                        Text(title)
                            .font(.gilroyFont(ofSize: 10, weight: .medium))
                            .foregroundColor(.checkinsTitleColor)
                    }
                    HStack {
                        Text(description)
                            .font(.gilroyFont(ofSize: 20, weight: .bold))
                            .foregroundColor(.checkinsValuesColor)
                        Text(value)
                            .font(.gilroyFont(ofSize: 10, weight: .bold))
                            .foregroundColor(.checkinsValuesColor)
                    }
                }
                Spacer()
            }
            .padding()
        }
        .background(
            RoundedRectangle(
                cornerRadius: 8,
                style: .continuous
            )
            .fill(background)
        )
    }
}

struct CheckinsView_Previews: PreviewProvider {
    static var previews: some View {
        CheckinsView()
    }
}
