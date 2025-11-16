//
//  BigPopularAudienceCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import SwiftUI

struct BigPopularAudienceCard: View {
    
    // MARK: - Property
    let popularAudiences: PopularAudiences
    
    // MARK: - Constants
    fileprivate enum BigPopularAudienceConstants {
        static let mainVSpacing: CGFloat = 25
        static let textVSpacing: CGFloat = 10
    }
    
    // MARK: - Init
    init(popularAudiences: PopularAudiences) {
        self.popularAudiences = popularAudiences
    }
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: BigPopularAudienceConstants.mainVSpacing) {
            imageSection
            
            textSection
        }
        .frame(width: 173, height: 230)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.mainColorI)
        )
        .shadow(color: .grayColorH, radius: 8)
    }
    
    private var imageSection: some View {
        Image(popularAudiences.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 104, height: 104)
            .clipShape(Circle())
    }
    
    private var textSection: some View {
        VStack(spacing: BigPopularAudienceConstants.textVSpacing) {
            Text(popularAudiences.rawValue)
                .font(.mainTextMedium16)
                .foregroundStyle(Color.grayColorA)
            
            Text(popularAudiences.bio)
                .font(.mainTextMedium14)
                .foregroundStyle(Color.grayColorE)
        }
    }
}

#Preview {
    BigPopularAudienceCard(popularAudiences: .wonheemom)
}
