//
//  ChocolateFactory.swift
//  Chocolate Factory
//
//  Created by Rodney Sampson on 12/8/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import Foundation

class ChocolateFactory {
    
    private static let BIG_CHOCOLATE_BAR_SIZE = 5
    private static let SMALL_CHOCOLATE_BAR_SIZE = 1
    
    var bigChocolateBars: Int = 0
    var smallChocolateBars: Int = 0

    init() {
    }
    
    init(stock: Int = 0) {
        self.stock(stock);
    }
    
    public func stock(_ stock: Int) -> Void {
        if stock <= 0 {
            return
        }
        
        let numberOfBigBars = Int(stock / ChocolateFactory.BIG_CHOCOLATE_BAR_SIZE)
        
        if stock - (numberOfBigBars * ChocolateFactory.BIG_CHOCOLATE_BAR_SIZE) <= 0 {
            bigChocolateBars += numberOfBigBars
            return
        } else {
            bigChocolateBars += numberOfBigBars
            let numberOfSmallBars = stock - (numberOfBigBars * ChocolateFactory.BIG_CHOCOLATE_BAR_SIZE)
            smallChocolateBars += numberOfSmallBars
            return
        }
    }
    
}
