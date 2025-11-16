//
//  Re_EncorelyTabView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/8/25.
//

import SwiftUI

struct Re_EncorelyTabView: View {
    
    enum tabCase: CaseIterable {
        case venue
        case review
        case mypage
    }
    
    @State var tabcase: tabCase = .venue
    
    var body: some View {
        TabView(selection: $tabcase, content: {
            Tab(value: tabcase,
                role: .none,
                content: { VenueView() },
                label: {
                VStack {
                    Image("venueTab")
                    Text("공연정보")
                }
            })
            
            Tab(value: tabcase,
                role: .none,
                content: { Text("후기 등록") },
                label: {
                VStack {
                    Image("reviewTab")
                    Text("후기 등록")
                }
            })
            
            Tab(value: tabcase,
                role: .none,
                content: { Text("마이페이지") },
                label: {
                VStack {
                    Image("mypageTab")
                    Text("마이페이지")
                }
            })
            
            Tab(value: tabcase,
                role: .search,
                content: { Text("검색창") }
            )
        })
        .tint(Color.mainColorD)
        .onAppear {
            UITabBar.appearance().unselectedItemTintColor = UIColor.grayColorG
        }
    }
}

#Preview {
    Re_EncorelyTabView()
}
