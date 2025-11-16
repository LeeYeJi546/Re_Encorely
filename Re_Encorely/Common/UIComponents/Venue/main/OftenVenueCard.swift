//
//  oftenVenueCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import SwiftUI

struct OftenVenueCard: View {
    
    // MARK: - Property
    let oftenVenues: OftenVenues
    
    // MARK: - Constants
    fileprivate enum OftenVenueConstants {
        static let mainVStackSpacing: CGFloat = 10
        static let infoVStackSpacing: CGFloat = 7
        static let hstackSpacing: CGFloat = 8
    }
    
    // MARK: - Init
    init(oftenVenues: OftenVenues) {
        self.oftenVenues = oftenVenues
    }
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: OftenVenueConstants.mainVStackSpacing) {
            Image(oftenVenues.image)
                .resizable()
                .frame(width: 81, height: 81)
            
            venueInfo
        }
        .frame(width: 87, height: 134)
    }
    
    /// 공연장 정보 표시 (이름+위치 포함)
    private var venueInfo: some View {
        VStack(spacing: OftenVenueConstants.infoVStackSpacing) {
            Text(oftenVenues.rawValue)
                .font(.mainTextMedium16)
                .foregroundStyle(Color.grayColorA)
            
            venueLocation
        }
    }
    
    /// 공연장 위치 표시 (위치 아이콘+위치 포함)
    private var venueLocation: some View {
        HStack(spacing: OftenVenueConstants.hstackSpacing) {
            Image("location")
                .foregroundStyle(Color.grayColorF)
            
            Text(oftenVenues.location)
                .foregroundStyle(Color.grayColorF)
                .font(.mainTextMedium14)
        }
    }
}

#Preview {
    OftenVenueCard(oftenVenues: .goCheokSkyDome)
}
