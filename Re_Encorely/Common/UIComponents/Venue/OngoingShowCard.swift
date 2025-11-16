//
//  ongoingShowCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import SwiftUI

struct OngoingShowCard: View {
    
    // MARK: - Property
    let ongoingShows: OngoingShows
    
    // MARK: - Constants
    fileprivate enum OngoingShowConstants {
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
        VStack(alignment: .leading, spacing: OngoingShowConstants.mainSpacing) {
            imageSection
            
            textSection
        }
        .frame(width: 135)
    }
    
    private var imageSection: some View {
        Image(ongoingShows.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 135, height: 180)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
    }
    
    private var textSection: some View {
        VStack(alignment: .leading, spacing: OngoingShowConstants.textMainVSpacing) {
            Text(ongoingShows.rawValue)
                .font(.mainTextMedium16)
                .foregroundStyle(Color.grayColorA)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
            
            VStack(alignment: .leading, spacing: OngoingShowConstants.textSubVSpacing) {
                Text(ongoingShows.location)
                    .font(.mainTextMedium16)
                    .foregroundStyle(Color.grayColorC)
                
                Text(ongoingShows.date)
                    .font(.mainTextMedium14)
                    .foregroundStyle(Color.grayColorE)
            }
        }
    }
}

#Preview {
    OngoingShowCard(ongoingShows: .rideOrDie)
}
