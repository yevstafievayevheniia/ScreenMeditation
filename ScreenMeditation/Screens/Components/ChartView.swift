//
//  ChartView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI
import Charts

struct ChartView: View {

    struct MonthData: Identifiable {
        var id: UUID = UUID()
        var month: Double
        var value: Double
    }

    var data: [MonthData] = [
        .init(month: 1, value: 5),
        .init(month: 2, value: 7),
        .init(month: 3, value: 6),
        .init(month: 4, value: 4),
        .init(month: 5, value: 17),
        .init(month: 6, value: 19),
        .init(month: 7, value: 11),
        .init(month: 8, value: 15),
        .init(month: 9, value: 14),
        .init(month: 10, value: 25),
        .init(month: 11, value: 15),
        .init(month: 12, value: 30),
        .init(month: 13, value: 27),
        .init(month: 14, value: 27),
        .init(month: 15, value: 30),
        .init(month: 16, value: 35),
        .init(month: 17, value: 27)
    ]

    var selectedElement: MonthData = .init(month: 8, value: 15)

    var labels: [String] = [
        "yearly_jan".localized,
        "yearly_mar".localized,
        "yearly_may".localized,
        "yearly_jul".localized,
        "yearly_sep".localized,
        "yearly_nov".localized
    ]

    var body: some View {
        VStack {
            titleView
            chartView
            labelsView
        }
    }
}

extension ChartView {
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

    var chartView: some View {
        Chart(data) {
            LineMark(
                x: .value("Month", $0.month),
                y: .value("Value", $0.value)
            )
            .lineStyle(StrokeStyle(lineWidth: 3.0))
            .foregroundStyle(Color.chartLineDateColor)
            .interpolationMethod(.cardinal)
        }
        .chartOverlay { _ in
            ZStack(alignment: .top) {
                RoundedRectangle(
                    cornerRadius: 5,
                    style: .continuous
                )
                .fill(Color.chartLollipopColor)
                .frame(width: 30, height: 120)
                .position(x: CGFloat(200), y: 75)

                Image.chartDotIcon
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                    .position(x: CGFloat(200), y: 40)
            }
        }
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
    }

    var labelsView: some View {
        HStack {
            ForEach(labels, id: \.self) {
                if $0 == "yearly_jul".localized {
                    Text($0)
                        .foregroundColor(.filledLineDateColor)
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
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
