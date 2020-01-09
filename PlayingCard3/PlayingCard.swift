//
//  PlayingCard.swift
//  PlayingCard3
//
//  Created by jinzhanjun on 2019/12/26.
//  Copyright © 2019 jinzhanjun. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    var description: String {
        return "\(suit)  \(numic)"
    }
    
    var suit: Suit
    var numic: Numic
    
    enum Suit: String, CustomStringConvertible {
        var description: String {
            switch self {
            case .fangpian: return "♢"
            case .heitao: return "♧"
            case .hongtao: return "♤"
            case .heart: return "♡"
            }
        }
        
        case fangpian = "♢"
        case heitao = "♧"
        case hongtao = "♤"
        case heart = "♡"
        
        static var all: [Suit] {
            return [Suit.fangpian, .heart, .hongtao, .heitao]
        }
    }
    
    enum Numic: CustomStringConvertible {
        var description: String {
            switch self {
            case .ace: return "1"
            case .num: return "\(self.order)"
            case .Jqk: return "\(self.order)"
            }
        }
        
        case ace
        case num(Int)
        case Jqk(String)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .num(let num): return num
            case .Jqk(let str) where str == "J": return 11
            case .Jqk(let str) where str == "Q": return 12
            case .Jqk(let str) where str == "K": return 13
            default: return 0
            }
        }
        
        static func getAll() -> [Numic] {
            var numicAllArray = [Numic]()
            numicAllArray += [Numic.ace]
            for num in 2...10 {
                numicAllArray += [Numic.num(num)]
            }
            numicAllArray += [Numic.Jqk("J"), .Jqk("Q"), .Jqk("K")]
            return numicAllArray
        }
    }
}
