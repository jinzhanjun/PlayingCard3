//
//  ViewController.swift
//  PlayingCard3
//
//  Created by jinzhanjun on 2019/12/26.
//  Copyright © 2019 jinzhanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var playingCards = [PlayingCard]()
        
        for suit in PlayingCard.Suit.all {
            for numic in PlayingCard.Numic.getAll() {
                playingCards += [PlayingCard(suit: suit, numic: numic)]
                print(PlayingCard(suit: suit, numic: numic))
            }
        }
    }
}

