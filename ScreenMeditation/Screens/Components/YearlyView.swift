//
//  YearlyView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI
import Charts

struct YearlyView: View {

    struct MonthData: Identifiable {
        var id: UUID = UUID()
        var month: String
        var value: Double
    }

    var data: [MonthData] = [
        .init(month: "yearly_jan".localized, value: 0.5),
        .init(month: String(), value: 0.3),
        .init(month: "yearly_mar".localized, value: 1.0),
        .init(month: String(), value: 0.8),
        .init(month: "yearly_may".localized, value: 1.2),
        .init(month: String(), value: 1.0),
        .init(month: "yearly_jul".localized, value: 4),
        .init(month: "yearly_sep".localized, value: 3),
        .init(month: "yearly_nov".localized, value: 9)
    ]

    var data2: [MonthData] = [
        .init(month: "yearly_jan".localized, value: 0),
        .init(month: String(), value: 0),
        .init(month: "yearly_mar".localized, value: 0),
        .init(month: String(), value: 0),
        .init(month: "yearly_may".localized, value: 0),
        .init(month: String(), value: 0),
        .init(month: "yearly_jul".localized, value: 4),
        .init(month: "yearly_sep".localized, value: 0),
        .init(month: "yearly_nov".localized, value: 0)
    ]

    var body: some View {
        VStack {
            titleView
            chartView
        }
    }

    var chartView: some View {
        ZStack {
            Chart(data) {
                LineMark(
                    x: .value("Month", $0.month),
                    y: .value("Value", $0.value)
                )
                .interpolationMethod(.catmullRom)
                .foregroundStyle(Color.chartLineDateColor)
            }
            Chart(data2) {
                BarMark(
                    x: .value("Month", $0.month),
                    y: .value("Value", $0.value)
                )
                .foregroundStyle(Color.chartLineDateColor)
                PointMark(
                    x: .value("Month", $0.month),
                    y: .value("Value", $0.value)
                )
                .foregroundStyle(Color.chartLineDateColor)
            }
        }
    }

    var titleView: some View {
        HStack {
            Text("yearly_title".localized)
                .font(.poppinsFont(ofSize: 16, weight: .medium))
                .foregroundColor(.monthTitleColor)
            Spacer()
            HStack(alignment: .center, spacing: 5) {
                Button {
                    //TODO: Add previous year button functionality
                    print("[ContentView]: previous year button tapped")
                } label: {
                    Image.backIcon
                }
                Text("yearly_year")
                    .font(.gilroyFont(ofSize: 14, weight: .medium))
                    .foregroundColor(.monthTitleColor)
                Button {
                    //TODO: Add next year button functionality
                    print("[ContentView]: next year button tapped")
                } label: {
                    Image.forwardIcon
                }
            }
        }

    }
}

struct YearlyView_Previews: PreviewProvider {
    static var previews: some View {
        YearlyView()
    }
}
