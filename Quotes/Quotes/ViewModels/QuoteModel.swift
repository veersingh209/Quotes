//
//  QuoteModel.swift
//  Quotes
//
//  Created by Veer Singh on 8/23/22.
//

import Foundation

class QuoteModel: ObservableObject {
    
    var quote = [Quote]()
    
    init() {
        quote = DataService.getQuoteData()
    }
}
