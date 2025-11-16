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
    
    var simpleReview: String {
        switch self {
        case .rodReview:
            return "저 아직 체조경기장에 살아요..🧎‍➡️"
        case .gonnyReview:
            return "거니랑 어디라도 갈래!🥰"
        case .musicalReview:
            return "\"당신이 내 삶에 준 고통은 아무것도 없어요\""
        case .bbReview:
            return "비비 언니 저 책임지세요"
        case .jannabiReview:
            return "이렇게 신나면 우뜩하라고❗️"
        case .iuReview:
            return "유애나가 되.."
        case .jpopReivew:
            return "귀 녹았어요"
        case .potatoReview:
            return "너무 잘생김 진짜로"
        case .wishReview:
            return "위시야 사랑해🩵"
        }
    }
}
