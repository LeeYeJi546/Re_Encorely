//
//  VenueListCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/17/25.
//

import SwiftUI

struct VenueListCard: View {
    
    // MARK: - Property
    let oftenVenues: OftenVenues
    
    // MARK: - Constants
    fileprivate enum VenueListConstants {
        static let mainHSpacing: CGFloat = 20
        static let infoVStackSpacing: CGFloat = 8
    }
    
    // MARK: - Init
    init(oftenVenues: OftenVenues) {
        self.oftenVenues = oftenVenues
    }
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: VenueListConstants.mainHSpacing) {
            imageSection
            infoSection
            Spacer()
            Image(.chevronRight)
        }
    }
    
    private var imageSection: some View {
        Image(oftenVenues.image)
            .resizable()
            .frame(width: 70, height: 70)
            .clipShape(Circle())
    }
    
    private var infoSection: some View {
        VStack(alignment: .leading, spacing: VenueListConstants.infoVStackSpacing) {
            Text(oftenVenues.rawValue)
                .font(.mainTextMedium18)
                .foregroundStyle(.grayColorA)
            
            Text(oftenVenues.address)
                .font(.mainTextMedium14)
                .foregroundStyle(.grayColorF)
        }
    }
}

#Preview {
    VenueListCard(oftenVenues: .goCheokSkyDome)
}
