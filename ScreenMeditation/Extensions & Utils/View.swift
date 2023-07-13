//
//  View.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import SwiftUI

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

extension View {
    func border(
        _ color: Color,
        width: CGFloat,
        cornerRadius: CGFloat,
        insets: EdgeInsets = EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0),
        corners: UIRectCorner = .allCorners
    ) -> some View {
        overlay(
            RoundedCornersShape(corners: corners, radius: cornerRadius).stroke(color, lineWidth: width)
                .padding(insets)
        )
    }
}
