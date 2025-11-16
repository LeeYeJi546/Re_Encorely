//
//  OftenVenues.swift
//  Re_Encorely
//
//  Created by 이예지 on 11/9/25.
//

import Foundation
import SwiftUI

enum OftenVenues: String, CaseIterable, Identifiable {
    case goCheokSkyDome = "고척 스카이돔"
    case kspoDome = "KSPO DOME"
    case jangChungGym = "장충 체육관"
    case seoulWorldcupStadium = "서울월드컵경기장"
    case jamsilIndoorStadium = "잠실실내체육관"
    case inspireArena = "인스파이어 아레나"
    case goyangMainStadium = "고양종합운동장 주경기장"
    
    var id: String { self.rawValue }
    
    var image: ImageResource {
        switch self {
        case .goCheokSkyDome:
            return .goCheokSkyDome
        case .kspoDome:
            return .kspoDome
        case .jangChungGym:
            return .jangChungGym
        case .seoulWorldcupStadium:
            return .seoulWorldcupStadium
        case .jamsilIndoorStadium:
            return .jamsilIndoorStadium
        case .inspireArena:
            return .inspireArena
        case .goyangMainStadium:
            return .goyangMainStadium
        }
    }
    
    var location: String {
        switch self {
        case .goCheokSkyDome:
            return "구로구"
        case .kspoDome:
            return "송파구"
        case .jangChungGym:
            return "서울 중구"
        case .seoulWorldcupStadium:
            return "마포구"
        case .jamsilIndoorStadium:
            return "송파구"
        case .inspireArena:
            return "인천 중구"
        case .goyangMainStadium:
            return "일산서구"
        }
    }
    
    var address: String {
        switch self {
        case .goCheokSkyDome:
            return "서울특별시 구로구 경인로 430"
        case .kspoDome:
            return "서울특별시 송파구 올림픽로 424"
        case .jangChungGym:
            return "서울특별시 중구 동호로 241"
        case .seoulWorldcupStadium:
            return "서울특별시 마포구 월드컵로 240"
        case .jamsilIndoorStadium:
            return "서울특별시 송파구 올림픽로 25"
        case .inspireArena:
            return "인천광역시 중구 영종해안남로 321"
        case .goyangMainStadium:
            return "경기도 고양시 일산서구 중앙로 160"
        }
    }
}
