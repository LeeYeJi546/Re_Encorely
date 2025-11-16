//
//  VenueListView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct VenueListView: View {
    
    fileprivate enum VenueListViewConstants {
        static let mainPadding: CGFloat = 16
        static let hstackSpacing: CGFloat = 25
        static let vstackSpacing: CGFloat = 30
        static let topPadding: CGFloat = 20
    }
    
    var body: some View {
        VStack(spacing: VenueListViewConstants.hstackSpacing) {
            searchBar
            scrollContents
        }
        .padding(.horizontal, VenueListViewConstants.mainPadding)
    }
    
    @State private var searchText: String = ""
    
    private var searchBar: some View {
        TextField("내가 찾고 싶은 공연장을 입력해보세요.", text: $searchText)
            .leftSearchFieldStyle()
            .padding(.top, VenueListViewConstants.topPadding)
    }
    
    private var scrollContents: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: VenueListViewConstants.vstackSpacing) {
                ForEach(OftenVenues.allCases, id: \.id) { venue in
                    Button(action: {
                        
                    }, label: {
                        VenueListCard(oftenVenues: venue)
                    })
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    VenueListView()
}
