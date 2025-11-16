//
//  BigHotTopicReviewCard.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/17/25.
//

import SwiftUI

struct BigHotTopicReviewCard: View {
    
    // MARK: - Property
    let hotTopicReviews: HotTopicReviews
    
    // MARK: - Constants
    fileprivate enum BigHotTopicReviewConstants {
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
        VStack(alignment: .leading, spacing: BigHotTopicReviewConstants.bottomSpacing) {
            ZStack(alignment: .bottomLeading) {
                imageSection
                
                userInfo
            }
            simpleReview
        }
    }
    
    private var imageSection: some View {
        Image(hotTopicReviews.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 173, height: 230)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    private var userInfo: some View {
        HStack(spacing: BigHotTopicReviewConstants.hSpacing) {
            Image(hotTopicReviews.user.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 29, height: 29)
                .clipShape(Circle())
            
            Text(hotTopicReviews.user.rawValue)
                .font(.mainTextMedium14)
                .foregroundStyle(Color.white)
        }
        .padding(.leading, BigHotTopicReviewConstants.leadingSpacing)
        .padding(.bottom, BigHotTopicReviewConstants.bottomSpacing)
    }
    
    private var simpleReview: some View {
        Text(hotTopicReviews.simpleReview)
            .font(.mainTextMedium16)
            .foregroundStyle(.grayColorA)
            .lineLimit(1)
    }
}

#Preview {
    BigHotTopicReviewCard(hotTopicReviews: .rodReview)
}
