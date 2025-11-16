//
//  CustomSearchBarStyle.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct RightSearchFieldStyle: TextFieldStyle {
    var backgroundColor: Color = .white
    var borderColor: Color = .grayColorC
    var cornerRadius: CGFloat = 100
    var horizontalPadding: CGFloat = 20
    var verticalPadding: CGFloat = 12
    var hstackPadding: CGFloat = 13
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack(alignment: .center, spacing: hstackPadding) {
            Image(.magnifyingGlass)
                .resizable()
                .frame(width: 25, height: 25)
            
            configuration
                .font(.mainTextMedium16)
        }
        .padding(.vertical, verticalPadding)
        .padding(.horizontal, horizontalPadding)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}

struct LeftSearchFieldStyle: TextFieldStyle {
    var backgroundColor: Color = .white
    var borderColor: Color = .grayColorC
    var cornerRadius: CGFloat = 100
    var verticalPadding: CGFloat = 13
    var leadingPadding: CGFloat = 21
    var trailingPadding: CGFloat = 25
    var hstackPadding: CGFloat = 13
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack(alignment: .center, spacing: hstackPadding) {
            configuration
                .font(.mainTextMedium14)
            
            Image(.magnifyingGlass)
                .resizable()
                .frame(width: 25, height: 25)
        }
        .padding(.leading, leadingPadding)
        .padding(.trailing, trailingPadding)
        .padding(.vertical, verticalPadding)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}

extension View {
    func rightSearchFieldStyle(
    backgroundColor: Color = .white,
    borderColor: Color = .grayColorC,
    cornerRadius: CGFloat = 100,
    horizontalPadding: CGFloat = 10,
    verticalPadding: CGFloat = 10,
    hstackPadding: CGFloat = 13
    ) -> some View {
        self.textFieldStyle(
            RightSearchFieldStyle()
        )
    }
    
    func leftSearchFieldStyle(
    backgroundColor: Color = .white,
    borderColor: Color = .grayColorC,
    cornerRadius: CGFloat = 100,
    horizontalPadding: CGFloat = 10,
    verticalPadding: CGFloat = 10,
    hstackPadding: CGFloat = 13
    ) -> some View {
        self.textFieldStyle(
            LeftSearchFieldStyle()
        )
    }
}
