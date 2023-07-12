//
//  YearlyView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 13.07.2023.
//

import SwiftUI

struct YearlyView: View {

    var body: some View {
        VStack {
            titleView
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
