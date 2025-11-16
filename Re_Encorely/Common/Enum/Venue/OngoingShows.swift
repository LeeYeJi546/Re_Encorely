//
//  OngoingShows.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import Foundation
import SwiftUI

enum OngoingShows: String, CaseIterable, Identifiable {
    case intro = "HIGHLIGHT LIVE 2022 [INTRO]"
    case sportsDay = "2022 하이라이트 팬콘 [하이라이트 운동회]"
    case bitterSweet = "2023 양요섭 솔로 콘서트 [BITTER SWEET]"
    case fourShadowsAndOneLight = "2023 HIGHLIGHT FAN CON [명탐정 하이라이트]"
    case lightGoOnAgain = "HIGHLIGHT LIVE 2024 [LIGHTS GO ON, AGAIN]"
    case werther = "뮤지컬 베르테르"
    case highMart = "2025 HIGHLIGHT FAN CON [WELCOME TO THE HIGH-MART]"
    case rideOrDie = "HIGHLIGHT LIVE 2025 [RIDE OR DIE]"
    case ever = "SON DONGWOON LIVE 2025 [Ever+]​​"
    
    var id: String { self.rawValue }
    
    var image: ImageResource {
        switch self {
        case .intro:
            return .intro
        case .sportsDay:
            return .sportsDay
        case .bitterSweet:
            return .bitterSweet
        case .fourShadowsAndOneLight:
            return .fourShadowsAndOneLight
        case .lightGoOnAgain:
            return .lightGoOnAgain
        case .werther:
            return .werther
        case .highMart:
            return .highMart
        case .rideOrDie:
            return .rideOrDie
        case .ever:
            return .ever
        }
    }
    
    var location: String {
        switch self {
        case .intro:
            return "잠실실내체육관"
        case .sportsDay:
            return "장충체육관"
        case .bitterSweet:
            return "올림픽공원 올림픽홀"
        case .fourShadowsAndOneLight:
            return "고려대학교 화정체육관"
        case .lightGoOnAgain:
            return "KSPO DOME"
        case .werther:
            return "디큐브 링크아트센터"
        case .highMart:
            return "잠실실내체육관"
        case .rideOrDie:
            return "KSPO DOME"
        case .ever:
            return "연세대학교 백주년기념관 콘서트홀"
        }
    }
    
    var date: String {
        switch self {
        case .intro:
            return "2022.05.20~22"
        case .sportsDay:
            return "2022.10.15~16"
        case .bitterSweet:
            return "2023.06.10~11"
        case .fourShadowsAndOneLight:
            return "2023.11.17~19"
        case .lightGoOnAgain:
            return "2024.05.10~12"
        case .werther:
            return "2025.01.17~03.16"
        case .highMart:
            return "2025.03.08~09"
        case .rideOrDie:
            return "2025.07.11~13"
        case .ever:
            return "2025.12.13~14"
        }
    }
}
