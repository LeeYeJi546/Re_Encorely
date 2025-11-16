//
//  HotTopicReviewView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct HotTopicReviewView: View {
    
    fileprivate enum HotTopicReviewViewConstants {
        static let mainPadding: CGFloat = 16
        static let mainVSpacing: CGFloat = 25
        static let topPadding: CGFloat = 15
        static let gridSpacing: CGFloat = 40
    }
    
    var body: some View {
        VStack(spacing: HotTopicReviewViewConstants.mainVSpacing) {
            searchBar
            scrollContents
        }
        .padding(.horizontal, HotTopicReviewViewConstants.mainPadding)
    }
    
    @State private var searchText: String = ""
    
    private var searchBar: some View {
        TextField("공연 후기를 검색해보세요", text: $searchText)
            .rightSearchFieldStyle()
            .padding(.top, HotTopicReviewViewConstants.topPadding)
    }
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    private var scrollContents: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: HotTopicReviewViewConstants.gridSpacing) {
                ForEach(HotTopicReviews.allCases, id: \.id) { review in
                    Button(action: {
                        
                    }, label: {
                        BigHotTopicReviewCard(hotTopicReviews: review)
                    })
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    HotTopicReviewView()
}
