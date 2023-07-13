//
//  ContentView.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI


struct ContentView: View {
    
    @State private var memos: String = String()

    enum TextFieldID {
        case memosSectionId
    }
    @State var scrollTarget: TextFieldID?

    private func endEditing() {
        UIApplication.shared.endEditing()
        scrollTarget = nil
        memos = String()
    }

    var body: some View {
        NavigationView {
            ZStack {
                ScrollViewReader { proxy in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            checkInStatisticsSection
                            calendarSection
                            yearlyStatusSection
                            memosSection
                        }
                    }
                    .onChange(of: scrollTarget) { target in
                        if let target = target {
                            AnimatedAction.execute {
                                scrollTarget = nil
                                proxy.scrollTo(target, anchor: .center)
                            }
                        }
                    }
                }
                .ignoresSafeArea(.container, edges: .bottom)
                .padding(10)
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
                    MenuView()
                }
            }
            .onTapGesture {
                self.endEditing()
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
            ChartView()
                .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
    }

    var memosSection: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("memos_title".localized)
                    .font(.body)
                    .fontWeight(.medium)
                TextField("memos_placeholder".localized, text: $memos)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color.placeholderColor)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.textFieldBackgroundColor)
                    )
                    .simultaneousGesture(
                        TapGesture().onEnded {
                            scrollTarget = .memosSectionId
                        }
                    )
                    .onSubmit {
                        self.endEditing()
                    }
                    .submitLabel(.done)
            }
            .padding()
        }
        .border(.borderColor, width: 1, cornerRadius: 10)
        .id(TextFieldID.memosSectionId)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
