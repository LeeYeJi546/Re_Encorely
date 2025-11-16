//
//  hotTopicReviewCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import SwiftUI

struct HotTopicReviewCard: View {
    
    // MARK: - Property
    let hotTopicReviews: HotTopicReviews
    
    // MARK: - Constants
    fileprivate enum HotTopicReviewConstants {
        static let leadingSpacing: CGFloat = 15
        static let bottomSpacing: CGFloat = 10
        static let hSpacing: CGFloat = 8
    }
    
    // MARK: - Init
    init(hotTopicReviews: HotTopicReviews) {
        self.hotTopicReviews = hotTopicReviews
    }
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            imageSection
            
            userInfo
        }
    }
    
    private var imageSection: some View {
        Image(hotTopicReviews.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 190, height: 265)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    private var userInfo: some View {
        HStack(spacing: HotTopicReviewConstants.hSpacing) {
            Image(hotTopicReviews.user.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 29)
                .clipShape(Circle())
            
            Text(hotTopicReviews.user.rawValue)
                .font(.mainTextMedium14)
                .foregroundStyle(Color.white)
        }
        .padding(.leading, HotTopicReviewConstants.leadingSpacing)
        .padding(.bottom, HotTopicReviewConstants.bottomSpacing)
    }
}

#Preview {
    HotTopicReviewCard(hotTopicReviews: .gonnyReview)
}
