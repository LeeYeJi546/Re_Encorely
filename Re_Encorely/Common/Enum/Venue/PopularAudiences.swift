//
//  PopularAudiences.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import Foundation
import SwiftUI

enum PopularAudiences: String, CaseIterable, Identifiable {
    case wonheemom = "WonheeMom"
    case dog = "Dog"
    case muduck = "muduck"
    case jpopLove = "Jpop_love"
    case potatogood = "potatogood"
    case iloveiu = "Iloveiu"
    case gardencar = "Gardencar"
    case wishforlove = "Wishforlove"
    
    
    var id: String { self.rawValue }
    
    var image: ImageResource {
        switch self {
        case .wonheemom:
            return .wonheemom
        case .dog:
            return .dog
        case .muduck:
            return .flowerDog
        case .jpopLove:
            return .jpopLove
        case .potatogood:
            return .potatogood
        case .iloveiu:
            return .iloveiu
        case .gardencar:
            return .gardencar
        case .wishforlove:
            return .wishforlove
        }
    }
    
    var bio: String {
        switch self {
        case .wonheemom:
            return "원희를 사랑함"
        case .dog:
            return "KPOP 듣는 개"
        case .muduck:
            return "갈테야테야 뮤지컬 갈테야"
        case .jpopLove:
            return "JPOP을 좋아하는 사람"
        case .potatogood:
            return "쫑생아 사랑해"
        case .iloveiu:
            return "IU 콘서트만 백번째"
        case .gardencar:
            return "인디밴드에 미친자"
        case .wishforlove:
            return "리쿠야 결혼하자"
        }
    }
}
