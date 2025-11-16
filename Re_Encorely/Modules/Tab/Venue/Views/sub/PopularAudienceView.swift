//
//  PopularAudienceView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct PopularAudienceView: View {
    
    fileprivate enum PopularAudienceViewConstants {
        static let mainPadding: CGFloat = 16
        static let mainVSpacing: CGFloat = 25
        static let topPadding: CGFloat = 15
        static let gridSpacing: CGFloat = 40
    }
    
    var body: some View {
        VStack(spacing: PopularAudienceViewConstants.mainVSpacing) {
            searchBar
            scrollContents
        }
        .padding(.horizontal, PopularAudienceViewConstants.mainPadding)
    }
    
    @State private var searchText: String = ""
    
    private var searchBar: some View {
        TextField("내가 찾고 싶은 공연러를 검색하세요", text: $searchText)
            .rightSearchFieldStyle()
            .padding(.top, PopularAudienceViewConstants.topPadding)
    }
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    private var scrollContents: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: PopularAudienceViewConstants.gridSpacing) {
                ForEach(PopularAudiences.allCases, id: \.id) { audience in
                    Button(action: {
                        
                    }, label: {
                        BigPopularAudienceCard(popularAudiences: audience)
                    })
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    PopularAudienceView()
}
