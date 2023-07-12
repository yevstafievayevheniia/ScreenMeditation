//
//  Fonts.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI
import UIKit

public enum FontWeight {
    case regular
    case extraBold
    case ultra
    case bold
    case boldItalic
    case semibold
    case italic
    case black
    case book
    case medium
    case light
    case extraLight
}

private let poppinsFontMapping: [FontWeight: String] = [
    .medium: "Poppins-Medium",
]

private let gilroyFontMapping: [FontWeight: String] = [
    .medium: "Gilroy-Medium",
    .semibold: "Gilroy-Semibold",
    .bold: "Gilroy-Bold",
]

extension Font {

    public static func poppinsFont(ofSize size: CGFloat, weight: FontWeight = .regular) -> Font {
        guard let fontName = poppinsFontMapping[weight] else {
            return Font.system(size: size, weight: .regular)
        }
        return Font.custom(fontName, size: size)
    }

    public static func gilroyFont(ofSize size: CGFloat, weight: FontWeight = .regular) -> Font {
        guard let fontName = gilroyFontMapping[weight] else {
            return Font.system(size: size, weight: .regular)
        }
        return Font.custom(fontName, size: size)
    }
}
