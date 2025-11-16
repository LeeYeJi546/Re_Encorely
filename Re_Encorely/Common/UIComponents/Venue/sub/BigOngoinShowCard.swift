//
//  BigOngoinShowCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct BigOngoingShowCard: View {
    
    // MARK: - Property
    let ongoingShows: OngoingShows
    
    // MARK: - Constants
    fileprivate enum BigOngoingShowConstants {
        static let mainSpacing: CGFloat = 10
        static let textMainVSpacing: CGFloat = 8
        static let textSubVSpacing: CGFloat = 5
    }
    
    // MARK: - Init
    init(ongoingShows: OngoingShows) {
        self.ongoingShows = ongoingShows
    }
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: BigOngoingShowConstants.mainSpacing) {
            imageSection
            
            textSection
        }
        .frame(width: 172)
    }
    
    private var imageSection: some View {
        Image(ongoingShows.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 172, height: 220)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
    }
    
    private var textSection: some View {
        VStack(alignment: .leading, spacing: BigOngoingShowConstants.textMainVSpacing) {
            Text(ongoingShows.rawValue)
                .font(.mainTextMedium16)
                .foregroundStyle(Color.grayColorA)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
            
            VStack(alignment: .leading, spacing: BigOngoingShowConstants.textSubVSpacing) {
                Text(ongoingShows.location)
                    .font(.mainTextMedium16)
                    .foregroundStyle(Color.grayColorE)
                    .lineLimit(1)
                
                Text(ongoingShows.date)
                    .font(.mainTextMedium14)
                    .foregroundStyle(Color.grayColorF)
                    .lineLimit(1)
            }
        }
    }
}

#Preview {
    BigOngoingShowCard(ongoingShows: .rideOrDie)
}
