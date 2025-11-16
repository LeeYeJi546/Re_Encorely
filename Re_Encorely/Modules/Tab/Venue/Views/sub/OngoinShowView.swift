//
//  OngoinShowView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/16/25.
//

import SwiftUI

struct OngoinShowView: View {
    
    fileprivate enum OngoingShowViewConstants {
        static let mainPadding: CGFloat = 16
        static let mainVSpacing: CGFloat = 25
        static let topPadding: CGFloat = 15
        static let gridSpacing: CGFloat = 40
    }
    
    var body: some View {
        VStack(spacing: OngoingShowViewConstants.mainVSpacing) {
            searchBar
            scrollContents
        }
        .padding(.horizontal, OngoingShowViewConstants.mainPadding)
    }
    
    @State private var searchText: String = ""
    
    private var searchBar: some View {
        TextField("공연장, 지역을 검색해보세요", text: $searchText)
            .rightSearchFieldStyle()
            .padding(.top, OngoingShowViewConstants.topPadding)
    }
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    private var scrollContents: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: OngoingShowViewConstants.gridSpacing) {
                ForEach(OngoingShows.allCases, id: \.id) { show in
                    Button(action: {
                        
                    }, label: {
                        BigOngoingShowCard(ongoingShows: show)
                    })
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    OngoinShowView()
}
