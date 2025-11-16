//
//  VenueView.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/8/25.
//

import SwiftUI

struct VenueView: View {
    
    // MARK: - Constants
    fileprivate enum VenueViewConstants {
        static let mainPadding: CGFloat = 16
        static let mainLineSpacing: CGFloat = 8
        static let sectionSpacing: CGFloat = 50
        static let venueCardSpacing: CGFloat = 30
        static let otherCardSpacing: CGFloat = 20
        static let scrollPadding: CGFloat = 30
    }
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            LazyVStack {
                topContents
                
                scrollContents
                    .padding(.top, VenueViewConstants.scrollPadding)
                    .padding(.bottom, VenueViewConstants.scrollPadding)
            }
        }
        .ignoresSafeArea()
    }
    
    // MARK: - TopContents
    
    /// 상단 아이콘, 이미지 영역
    private var topContents: some View {
        ZStack {
            banner
            VStack {
                topBar
                    .padding(.top, 77)
                Spacer()
            }
        }
    }
    
    /// 아이콘 + 알람 버튼
    private var topBar: some View {
        HStack {
            Image("encorely")
            Spacer()
            Button(action: {
                
            }, label: {
                Image("alarm")
                    .foregroundStyle(Color.white)
            })
        }
        .padding(.horizontal, VenueViewConstants.mainPadding)
    }
    
    /// 공연 이미지
    private var banner: some View {
        ZStack(alignment: .bottomLeading) {
            Image("mainHomeBanner")
                .resizable()
            VStack(alignment: .leading, spacing: VenueViewConstants.mainLineSpacing) {
                
                Text("단독 혜택부터\n인기 공연 할인까지")
                    .foregroundStyle(Color.white)
                    .font(.mainTextSemiBold24)
                    .lineSpacing(VenueViewConstants.mainLineSpacing)
                
                Text("올 여름, 다양한 이벤트를 만나보세요")
                    .foregroundStyle(Color.white)
                    .font(.mainTextMedium16)
            }
            .padding(.leading, VenueViewConstants.mainPadding)
            .padding(.bottom, 20)
        }
    }
    
    // MARK: - ScrollContents
    
    /// 좌우 스크롤뷰 컨텐츠
    private var scrollContents: some View {
        VStack(spacing: VenueViewConstants.sectionSpacing) {
            oftenVenue
            
            ongoingShow
            
            popularAudience
            
            hotTopicReview
        }
    }
    
    /// 자주 보는 공연장
    private var oftenVenue: some View {
        VStack {
            HStack {
                Text("자주 보는 공연장")
                    .font(.mainTextSemiBold20)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("chevronRight")
                })
                .buttonStyle(.glass)
            }
            .padding(.horizontal, VenueViewConstants.mainPadding)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: VenueViewConstants.venueCardSpacing) {
                    ForEach(OftenVenues.allCases, id: \.id) { venue in
                        Button(action: {
                            
                        }, label: {
                            OftenVenueCard(oftenVenues: venue)
                        })
                    }
                }
                .padding(.horizontal, VenueViewConstants.mainPadding)
            }
            .scrollIndicators(.hidden)
        }
    }
    
    /// 현재 진행 중인 공연
    private var ongoingShow: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("현재 진행 중인 공연")
                    .font(.mainTextSemiBold20)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("chevronRight")
                })
                .buttonStyle(.glass)
            }
            .padding(.horizontal, VenueViewConstants.mainPadding)
            
            ScrollView(.horizontal) {
                LazyHStack(alignment: .top, spacing: VenueViewConstants.otherCardSpacing) {
                    ForEach(OngoingShows.allCases, id: \.id) { show in
                        Button(action: {
                            
                        }, label: {
                            OngoingShowCard(ongoingShows: show)
                        })
                    }
                }
                .padding(.horizontal, VenueViewConstants.mainPadding)
            }
            .scrollIndicators(.hidden)
        }
    }
    
    /// 인기 공연러
    private var popularAudience: some View {
        VStack {
            HStack {
                Text("인기 공연러")
                    .font(.mainTextSemiBold20)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("chevronRight")
                })
                .buttonStyle(.glass)
            }
            .padding(.horizontal, VenueViewConstants.mainPadding)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: VenueViewConstants.otherCardSpacing) {
                    ForEach(PopularAudiences.allCases, id: \.id) { audience in
                        Button(action: {
                            
                        }, label: {
                            PopularAudienceCard(popularAudiences: audience)
                        })
                    }
                }
                .padding(VenueViewConstants.mainPadding)
            }
            .scrollIndicators(.hidden)
        }
    }
    
    /// 화제의 후기들
    private var hotTopicReview: some View {
        VStack {
            HStack {
                Text("화제의 후기들")
                    .font(.mainTextSemiBold20)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("chevronRight")
                })
                .buttonStyle(.glass)
            }
            .padding(.horizontal, VenueViewConstants.mainPadding)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: VenueViewConstants.otherCardSpacing) {
                    ForEach(HotTopicReviews.allCases, id: \.id) { review in
                        Button(action: {
                            
                        }, label: {
                            HotTopicReviewCard(hotTopicReviews: review)
                        })
                    }
                }
                .padding(.horizontal,VenueViewConstants.mainPadding)
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    VenueView()
}
