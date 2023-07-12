//
//  ContentView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var memous: String = String()

    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        checkInStatisticsSection
                        calendarSection
                        yearlyStatusSection
                        memousSection
                    }
                }
                .ignoresSafeArea()
                .padding()
            }
            .navigationTitle(
                Text("app_title".localized)
                    .font(.gilroyFont(ofSize: 20, weight: .bold))
            )
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    backButton
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    moreButton
                }
            }
        }
    }
}


extension ContentView {
    var backButton: some View {
        Button {
            //TODO: Add backButton functionality
            print("[ContentView]: backButton tapped")
        } label: {
            Image.backIcon
        }
    }

    var moreButton: some View {
        Button {
            //TODO: Add moreButton functionality
            print("[ContentView]: moreButton tapped")
        } label: {
            Image.moreIcon
        }
    }

    var checkInStatisticsSection: some View {
        ZStack {
            CheckinsView()
            .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
    }

    var calendarSection: some View {
        ZStack {
            CalendarView()
                .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
    }

    var yearlyStatusSection: some View {
        ZStack {
            YearlyView()
                .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
    }

    var memousSection: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("memous_title".localized)
                    .font(.body)
                    .fontWeight(.medium)
                TextField("memous_placeholder".localized, text: $memous)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.placeholderColor)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.textFieldBackgroundColor)
                    )
            }
            .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
