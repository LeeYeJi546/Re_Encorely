//
//  HotTopicReviews.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import Foundation
import SwiftUI

enum HotTopicReviews: String, CaseIterable, Identifiable {
    case rodReview = "Ride Or Die"
    case gonnyReview = "g0nny"
    case musicalReview = "뮤지컬 베르테르"
    case bbReview = "BIBI"
    case jannabiReview = "Jannabi"
    case iuReview = "IU"
    case jpopReivew = "JPOP"
    case potatoReview = "엔하이픈"
    case wishReview = "엔시티 위시"
    
    var id: String { self.rawValue }
    
    var image: ImageResource {
        switch self {
        case .rodReview:
            return .rodReview
        case .gonnyReview:
            return .gonnyReview
        case .musicalReview:
            return .musicalReview
        case .bbReview:
            return .bibiReview
        case .jannabiReview:
            return .jannabiReview
        case .iuReview:
            return .iuReview
        case .jpopReivew:
            return .jpopReview
        case .potatoReview:
            return .potatoReview
        case .wishReview:
            return .wishReview
        }
    }
    
    var user: PopularAudiences {
        switch self {
        case .rodReview:
            return .dog
        case .gonnyReview:
            return .gardencar
        case .musicalReview:
            return .muduck
        case .bbReview:
            return .wonheemom
        case .jannabiReview:
            return .gardencar
        case .iuReview:
            return .iloveiu
        case .jpopReivew:
            return .jpopLove
        case .potatoReview:
            return .potatogood
        case .wishReview:
            return .wishforlove
        }
    }
}
